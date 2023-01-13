let  userId=document.querySelector(".userId")
let fName=document.querySelector(".fName")
let lName=document.querySelector(".lName")
let birthday=document.querySelector(".bDay")
let btn=document.querySelector(".accept")




btn.addEventListener('click',function(){
    console.log(userId.value)
    let userIdLen = userId.value.length
    console.log(userIdLen)
    if(userIdLen<8 || userIdLen>12){
        alert("Invalid UserId")
        return false
    }

   for(let i=0;i<userIdLen;i++){
console.log(userId.value[i])
if(  isNaN(userId.value[i]) &&  userId.value[i].toUpperCase()===userId.value[i]){

    console.log(true)
    
} else {
    console.log(false)
}

if(isNaN(userId.value[i]) &&  userId.value[i].toLowerCase()===userId.value[i]){

    console.log("lowerCase   " +true)

} else{
    console.log(false)
}



   } 









// })




btn.addEventListener('click', function(){
const userIdValue = userId.value;

if(userIdValue.length<8||userIdValue.length>12){
    alert("Invalid UserID")
    return false;
}

let isLower=false;
let isNumber = false;
let isUpper = false;
for(let i =0;i<userIdValue.length;i++){
    if(!NaN(userIdValue[i]) && userIdValue[i].toUpperCase()===userIdValue[i])
        isUpper = true
}

if(userIdValue[i].toUpperCase()===userIdValue[i])
isUpper = true
}

})
 