const express=require('express');
const bodyParser=require('body-parser');
const cgRouter=require('./routes/cg.js');
const htRouter=require('./routes/ht.js');
var app=express();
app.listen(8080);


app.use(express.static('./ajax'));
app.use(express.static('./admin'));

app.use(bodyParser.urlencoded({
	extended:false
}));


app.use('/cg',cgRouter);
app.use('/ht',htRouter)