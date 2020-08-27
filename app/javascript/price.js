function price(){


const input = document.getElementById("item-price");
const addTax = document.getElementById("add-tax-price");
const profit = document.getElementById("profit");


input.addEventListener("keyup", (e)=>{
  const value = input.value;
  console.log(value);
  if(value >= 300 && value <= 9999999){
    let fee = Math.floor(value*0.1);
    let benefit =Math.floor(value-fee);
    addTax.textContent =fee;
    profit.textContent =benefit;
  }else{
    let fee = '-';
    let benefit = '-';
    addTax.textContent = fee;
    profit.textContent = benefit;
  }

});
}


window.addEventListener("load", price);