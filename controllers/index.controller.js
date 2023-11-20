const oracledb = require("oracledb");
const conf = require('../config/config')
oracledb.outFormat = oracledb.OUT_FORMAT_OBJECT;

// Obtiene los datos necesarios en la pagina de inicio
const getDatos = async(req, res) => {
    let con;
    try{
        con = await oracledb.getConnection({
            user            :   conf.user,
            password        :   conf.password,
            connectionString:   conf.connectionString
        });
    
        const data = await con.execute(
            `SELECT * FROM TIPODOC`,
        );
        const data2 = await con.execute(
            `SELECT * FROM TIPOPERSONA`,
        );
        
        tipoDoc = data.rows;
        tipoPer = data2.rows;

        res.render('index', {tipoDoc, tipoPer});
    } catch (err) {
        console.log(err);
    }
};

// Ingresa una persona al sistema 
const ingresarPersona = async (persona, res) => {
    let con;
    try{
        con = await oracledb.getConnection({
            user            :   conf.user,
            password        :   conf.password,
            connectionString:   conf.connectionString
        });

        const data = await con.execute(
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
        res.render('index')

    } catch (err) {
        console.log(err);
    }
};

// Inicia sesion segun el empleado 
const iniciarSesion = async (cod_empleado, res) => {
    let con;
    try{

        con = await oracledb.getConnection({
            user            :   conf.user,
            password        :   conf.password,
            connectionString:   conf.connectionString
        });

        let  empleado = await con.execute(
            `
            SELECT	E.CODEMPLEADO codigo, NOMEMPLEADO||' '||APELLEMPLEADO nombre, C.NOMCARGO cargo, C.CODCARGO codCargo
            FROM 	empleado E, cargo C, cargoEmpleado CE
            WHERE	E.CODEMPLEADO = CE.CODEMPLEADO and
                C.CODCARGO = CE.CODCARGO and
                E.CODEMPLEADO like :1
            `,
            [cod_empleado]
        );
        empleado = empleado.rows[0];
        console.log(empleado)

        if(empleado.CODCARGO == '00041'){
            res.render('fac_venta',{empleado});
        }else 
        if (empleado.CODCARGO == '00061'){
            res.render('fac_compra',{empleado});
        }else
        if (empleado.CODCARGO == '00031'){
            res.render('fac_devolucion_venta',{empleado});
        }else
        if (empleado.CODCARGO == '00011'){
            res.render('fac_devolucion_compra',{empleado});
        }else{
            console.log('Error: No tiene acceso al sistema')
        }

    } catch (err) {
        console.log(err);
    }
};

module.exports = {
    getDatos, ingresarPersona, iniciarSesion
};