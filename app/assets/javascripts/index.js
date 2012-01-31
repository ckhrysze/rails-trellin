$(document).ready(function(){
    var sources = {
        map: "assets/map.png"
    };
    loadImages(sources, initStage);
});

function loadImages(sources, callback){
    var images = {};

    for (var src in sources) {
        images[src] = new Image();
        images[src].onload = function(){
            if (++loadedImages >= numImages) {
                callback(images);
            }
        };
        images[src].src = sources[src];
    }
}

function drawBackground(background, beachImg, text){
    var canvas = background.getCanvas();
    var context = background.getContext();
    
    context.drawImage(beachImg, 0, 0);
    context.font = "20pt Calibri";
    context.textAlign = "center";
    context.fillStyle = "white";
    context.fillText(text, canvas.width / 2, 40);
}

function initStage(images){
    var stage = new Kinetic.Stage("container", 578, 530);
    var background = new Kinetic.Layer();
    var tokenLayer = new Kinetic.Layer();
    
    // token positions
    var tokens = {
    };
    
    stage.add(background);
    stage.add(tokens);
    
    drawBackground(background, images.beach);
}
