"use strict";
exports.__esModule = true;
var x;
var y;
var adder = function (num1, num2) {
    return num1 < 0 && num2 > 0 || num1 > 0 && num2 < 0;
};
console.log(adder(2, 2));
var firstName = "Dylan";
var json = JSON.parse('"a12"'); //Dta comes as string from server
console.log(typeof json);
var names = [];
names.push('Ali', 'Veli');
console.log(names);
