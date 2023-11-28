const { Router } = require("express");
const {
  buscarClientes,
  iniciarSesion,
  ingresarPersona,
} = require("../controllers/index.controller");
const router = Router();

router.get("/", (req, res) => {
  res.render("Iniciar-Sesion", { cod_empleado: null });
});

router.post("/iniciar_sesion", (req, res) => {
  iniciarSesion(req.body.codigo, res);
});

router.post("/buscar_cliente", (req, res) => {
  console.log(req.body);
  buscarClientes(req.body, res);
});

router.post("/addpersona", (req, res) => {
  console.log(req.body);
  ingresarPersona(req.body, res);
});

module.exports = router;
