const { Router } = require("express")
const {getDatos, ingresarPersona, iniciarSesion} = require('../controllers/index.controller')
const router = Router();

router.get('/', (req, res) => {
    getDatos(req,res);
});

router.post('/addpersona', (req, res) => {
    console.log(req.body)
    ingresarPersona(req.body,res);
});

router.post('/iniciar_sesion', (req, res) => {
    iniciarSesion(req.body.codigo,res);
});




module.exports = router;