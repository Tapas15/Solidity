const express = require('express');
const bodyParser = require('body-parser');
const app = express()

app.use(bodyParser.json());
//app.use(bodyParser.urlencoded({​​​​​​​​extended:false }​​​​​​​​));

const cors = require('cors');
app.options('*', cors());
app.use(cors());

var userRoutes = require('./Routes/testscript.js');
app.use('/testScript', userRoutes);

//app.use('/',async (req,res) => {​
//return res.status(200).send({msg :"Running at port "}) ; 
//});


app.use('/', function (req, res) {
    return res.status(200).send({ msg: "Running at port " });
});


//return res.status(200).send({​​​​​​​​
//message:"Running at port 7000"
// }​​​​​​​​);
//}​​​​​​​​);

// Server creating options
//app.listen(7000, (err, res) => {​​​​​​​​ 
//if (!err) {
//console.info("Node started 7000");  }
//else {
//console.error("App is not running"); }
//}​​​​​​​​);

app.listen(7000, function (req, res) {
    console.log("node started 7000")
});
