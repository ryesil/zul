const express = require('express');
const app = express();

app.use(express.json());


app.get('/',(req,res,next)=>{
    res.send("Hello World")      
})


const str ="ara.java";
let extention = str.split(".").pop()
console.log(extention)






app.listen('3000',()=>{
    console.log("app is listening 3000...")
})