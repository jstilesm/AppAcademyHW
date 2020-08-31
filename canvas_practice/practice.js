document.addEventListener("DOMContentLoaded", function(){
    
    // setting up the Canvas Element
    const ele = document.getElementById("mycanvas")
    ele.width = 500;
    ele.height = 500;
    const ctx = ele.getContext("2d")

   // Draw a Rectangle 
    ctx.fillStyle = "red";
    // ctx.fillRect(x, y, width, height)
    ctx.fillRect(100, 200, 300, 500)


    ctx.beginPath();
    // ctx.arc(x,y, radius, startAngle, endAngle [, anticlockwise])
    ctx.arc(250, 350, 145, 0, 2*Math.PI, true);
    ctx.strokeStyle = "blue"
    ctx.lineWidth = 10
    ctx.stroke();
    ctx.fillStyle = "green"
    ctx.fill();


    ctx.fillStyle = "pink"
    
    ctx.beginPath();
    ctx.moveTo(75, 40);
    ctx.bezierCurveTo(75, 37, 70, 25, 50, 25);
    ctx.bezierCurveTo(20, 25, 20, 62.5, 20, 62.5);
    ctx.bezierCurveTo(20, 80, 40, 102, 75, 120);
    ctx.bezierCurveTo(110, 102, 130, 80, 130, 62.5);
    ctx.bezierCurveTo(130, 62.5, 130, 25, 100, 25);
    ctx.bezierCurveTo(85, 25, 75, 37, 75, 40);
    ctx.fill();

});
