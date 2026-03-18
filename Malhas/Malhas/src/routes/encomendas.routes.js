const express = require("express");

const router = express.Router();

const { 
    cadastrar, 
    listar, 
    buscar, 
    atualizar, 
    excluir 
} = require("../controllers/encomendas.controller");

router.post("/cadastrar", cadastrar); //Testado
router.get("/listar", listar); //Tesado
router.get("/buscar/:id", buscar); //Testado
router.put("/atualizar/:id", atualizar); //Testado
router.delete("/excluir/:id", excluir); //Testado

module.exports = router;
