const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);// PAY.JPテスト公開鍵
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", (e) => {
    e.preventDefault();
 
    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);
 
    const card = {
      number: formData.get("number"),
      cvc: formData.get("cvc"),
      exp_month: formData.get("exp_month"),
      exp_year: `20${formData.get("exp_year")}`,
    };
    Payjp.createToken(card, (status, response) => {
      if (status == 200) {
        console.log("あ");
        const token = response.id;
        console.log("い");
        const renderDom = document.getElementById("charge-form");
        console.log("う");
        const tokenObj = `<input value=${token} type="hidden" name='token'>`;
        console.log("え");
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
        console.log("お");
      }
      console.log("か");
      document.getElementById("card-number").removeAttribute("name");
      document.getElementById("card-cvc").removeAttribute("name");
      document.getElementById("card-exp-month").removeAttribute("name");
      document.getElementById("card-exp-year").removeAttribute("name");

      document.getElementById("charge-form").submit();
      document.getElementById("charge-form").reset();
    });
  });
 };

 window.addEventListener("load", pay);