const express = require("express");
const cors = require("cors");

const app = express();
const PORT = process.env.PORT || 2000;

app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.status(200).send("Testing server running on the Docker");
});

app.listen(PORT, () => console.log("Server is Online on Port: ", PORT));
