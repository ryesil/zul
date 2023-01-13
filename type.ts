import { forEachChild } from "typescript";

let x: number;
let y: number;
const adder = (num1 : number, num2 : number):boolean=>{
    return num1<0&&num2>0||num1>0&&num2<0
}

console.log(adder(2,2));
let firstName: string = "Dylan"

const json = JSON.parse('"a12"');//Dta comes as string from server
console.log(typeof json)
let names:string[]=[];
names.push('Ali','Veli')

console.log(names)