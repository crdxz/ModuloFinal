const oracledb = require("oracledb");
const conf = require("../config/config");
oracledb.outFormat = oracledb.OUT_FORMAT_OBJECT;

// Obtiene los datos para el formulario de personas
const getDatos = async (req, res) => {
  let con;
  try {
    con = await oracledb.getConnection({
      user: conf.user,
      password: conf.password,
      connectionString: conf.connectionString,
    });

    const data = await con.execute(`SELECT * FROM TIPODOC`);
    const data2 = await con.execute(`SELECT * FROM TIPOPERSONA`);

    tipoDoc = data.rows;
    tipoPer = data2.rows;

    res.render("index", { tipoDoc, tipoPer });
  } catch (err) {
    console.log(err);
  }
};

// Ingresa una persona al sistema
const ingresarPersona = async (persona, res) => {
  let con;
  try {
    con = await oracledb.getConnection({
      user: conf.user,
      password: conf.password,
      connectionString: conf.connectionString,
    });

    const per = await con.execute(
      `INSERT INTO PERSONA VALUES (
                :1, :2, :3, :4, :5
            )`,
      [
        persona.tipoPer,
        persona.tipoDoc,
        persona.documento,
        persona.nombre,
        persona.apellido,
      ]
    );
    con.commit();
    let empleado = await con.execute(
      `
            SELECT	E.CODEMPLEADO codigo, NOMEMPLEADO||' '||APELLEMPLEADO nombre, C.NOMCARGO cargo, C.CODCARGO codCargo
            FROM 	empleado E, cargo C, cargoEmpleado CE
            WHERE	E.CODEMPLEADO = CE.CODEMPLEADO and
                C.CODCARGO = CE.CODCARGO and
                E.CODEMPLEADO like :1
            `,
      [persona.codEmpleado]
    );

    const data = await con.execute(`SELECT * FROM TIPODOC`);
    const data2 = await con.execute(`SELECT * FROM TIPOPERSONA`);

    tipoDoc = data.rows;
    tipoPer = data2.rows;
    empleado = empleado.rows[0];

    personas = null;
    res.render("select-cliente", { empleado, tipoDoc, tipoPer, personas });
  } catch (err) {
    console.log(err);
  }
};

// Inicia sesion segun el empleado
const iniciarSesion = async (cod_empleado, res) => {
  let con;
  try {
    con = await oracledb.getConnection({
      user: conf.user,
      password: conf.password,
      connectionString: conf.connectionString,
    });

    let empleado = await con.execute(
      `
            SELECT	E.CODEMPLEADO codigo, NOMEMPLEADO||' '||APELLEMPLEADO nombre, C.NOMCARGO cargo, C.CODCARGO codCargo
            FROM 	empleado E, cargo C, cargoEmpleado CE
            WHERE	E.CODEMPLEADO = CE.CODEMPLEADO and
                C.CODCARGO = CE.CODCARGO and
                E.CODEMPLEADO like :1
            `,
      [cod_empleado]
    );

    const data = await con.execute(`SELECT * FROM TIPODOC`);
    const data2 = await con.execute(`SELECT * FROM TIPOPERSONA`);

    tipoDoc = data.rows;
    tipoPer = data2.rows;

    if (empleado.rows == 0) {
      res.render("Iniciar-Sesion", { cod_empleado });
    } else {
      empleado = empleado.rows[0];
      personas = null;
      res.render("select-cliente", { empleado, tipoDoc, tipoPer, personas });
    }
  } catch (err) {
    console.log(err);
  }
};

// Obtiene los datos para el formulario de personas
const buscarClientes = async (req, res) => {
  let con;
  try {
    con = await oracledb.getConnection({
      user: conf.user,
      password: conf.password,
      connectionString: conf.connectionString,
    });
    let nombre = "%";
    let documento = "%";
    let tipoPer = "%";

    if (req.nombre != "") {
      nombre = req.nombre + "%";
    }
    if (req.documento != "") {
      documento = req.documento;
    }
    if (req.tipoPer != "none") {
      tipoPer = req.tipoPer;
    }

    const per = await con.execute(
      `
        SELECT * FROM persona
        WHERE lower(NOMBRE) like lower(:1) AND
              NDOCUMENTO like :2 AND
              IDTIPOPERSONA like :3
    `,
      [nombre, documento, tipoPer]
    );
    let empleado = await con.execute(
      `
            SELECT	E.CODEMPLEADO codigo, NOMEMPLEADO||' '||APELLEMPLEADO nombre, C.NOMCARGO cargo, C.CODCARGO codCargo
            FROM 	empleado E, cargo C, cargoEmpleado CE
            WHERE	E.CODEMPLEADO = CE.CODEMPLEADO and
                C.CODCARGO = CE.CODCARGO and
                E.CODEMPLEADO like :1
            `,
      [req.codEmpleado]
    );
    const data = await con.execute(`SELECT * FROM TIPODOC`);
    const data2 = await con.execute(`SELECT * FROM TIPOPERSONA`);

    tipoDoc = data.rows;
    tipoPer = data2.rows;
    personas = per.rows;
    empleado = empleado.rows[0];

    console.log(personas)

    res.render("select-cliente", { empleado, tipoDoc, tipoPer, personas });
  } catch (err) {
    console.log(err);
  }
};

module.exports = {
  getDatos,
  ingresarPersona,
  iniciarSesion,
  buscarClientes,
};
