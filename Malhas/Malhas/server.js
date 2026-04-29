require("dotenv").config();

const express = require("express");
const cors = require("cors");

const app = express();

app.use(express.json());
app.use(cors());

const clientesRoutes = require("./src/routes/clientes.routes");
const encomendaRoutes = require("./src/routes/encomendas.routes");
const pedidosRoutes = require("./src/routes/pedidios.routes");
const roupaRoutes = require("./src/routes/roupas.routes");

app.use("/clientes",clientesRoutes);
app.use("/encomenda",encomendaRoutes);
app.use("/pedidos",pedidosRoutes);
app.use("/roupas",roupaRoutes);


const porta = process.env.PORT_APP || 3000;

app.listen(porta, () => {
    console.log(`Online na porta ${porta}`);
});