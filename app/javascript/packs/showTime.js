document.addEventListener('turbolinks:load', () => {

    const showTime = document.getElementById("showTime");

    function update(){
        let today = new Date();
        showTime.innerHTML = "現在時刻： "+ today.toLocaleString("ja");
        window.requestAnimationFrame(update);
    };
    
    update();
  

})