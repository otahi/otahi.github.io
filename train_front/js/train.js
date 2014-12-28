var kind;
var station;

$(document).ready(function(){
    $.getJSON("js/kind.json", function(data){
        kind = data;
    });
    $.getJSON("js/station.json", function(data){
        station = data;
    });
    initCar();
});
function getCar() {
    return document.getElementById("train_form").car.value;
}
function getLine() {
    var lines = {
        "tokyu-2000-front": "DT",
        "oimachi-line-express-front": "OM",
        "tokyu-8090-front": "OM",
        "tokyu-9000-front": "OM",
        "tokyu-9000-front-80th": "OM"
    };
    return lines[getCar()];
}
function getKind() {
    return document.getElementById("train_form").kind.value;
}
function getKinds() {
    return {
        express:     {fgcolor: "white", bgcolor: "red",   string: "急行"},
        semiexpress: {fgcolor: "white", bgcolor: "lime",  string: "準急"},
        greenlocal:  {fgcolor: "green", bgcolor: "white", string: "各停"},
        bluelocal:   {fgcolor: "white", bgcolor: "blue",  string: "各停"},
        local:       {fgcolor: "white", bgcolor: "black", string: "各停"}
    };
}
function getKindString() {
    var kinds = getKinds();
    return kinds[getKind()]["string"];
}
function getKindFgColor() {
    var kinds = getKinds();
    return kinds[getKind()]["fgcolor"];
}
function getKindBgColor() {
    var kinds = getKinds();
    return kinds[getKind()]["bgcolor"];
}
function getDest() {
    return document.getElementById("train_form").dest.value;
}
function getDestString() {
    return station[getDest()]["string"];
}
function getDirection() {
    var direction = {
        "DT27": +1,
        "DT22": +1,
        "DT11": +1,
        "TS03": -1,
        "TI02": -1,
        "TN03": -1,
        "DT14": +1,
        "OM15": +1,
        "OM16": +1,
        "OM01": -1,
        "OM10": -1,
        "Z11":  +1,
        "OM08": +1
    };
    return direction[getDest()];
}
function getSource() {
    var source = {
        "OM" : {
            "DT27": "OM01",
            "DT22": "OM01",
            "DT11": "OM01",
            "DT14": "OM01",
            "OM15": "OM01",
            "OM16": "OM01",
            "OM01": "OM16",
            "OM10": "OM01",
            "OM08": "OM01"
        },
        "DT": {
            "DT27": "DT01",
            "DT22": "DT01",
            "DT11": "DT01",
            "TS03": "DT27",
            "TI02": "DT27",
            "TN03": "DT27",
            "Z11":  "DT27",
            "DT14": "DT01"
        } 
    };
    return source[getLine()][getDest()];
}
function changeKind() {
    var svg = document.getElementById("train").getSVGDocument();
    if (svg == null) return;

    var kind = getKind();
    svg.getElementById("kind_string").firstChild.firstChild.nodeValue = getKindString();
    svg.getElementById("kind_string").firstChild.style.fill = getKindFgColor();
    svg.getElementById("kind_bg").style.fill = getKindBgColor();
    svg.getElementById("kind_bg").style.stroke = getKindFgColor();
    svg.getElementById("kind_bg").style.strokeWidth = 3;
    svg.getElementById("kind_bg").style.strokeDashArray = 20;
    isDeparture = true
}
function changeDest() {
    var svg = document.getElementById("train").getSVGDocument();
    if (svg == null) return;
    var dest = getDestString();
    svg.getElementById("dest_string").firstChild.firstChild.nodeValue = dest;
    var fontSize = 40 / dest.length * 3;
    svg.getElementById("dest_string").firstChild.style.fontSize = fontSize;
    isDeparture = true
}
function moveWiper() {
    var svg = document.getElementById("train").getSVGDocument();
    var wipe = '<animateMotion path="M10,0 100,0 10,0" dur="1s" repeatCount="indefinite" />';
    svg.getElementById("wiper").innerHTML = wipe;
}
function changeCar() {
    var car = document.getElementById("train_form").car.value;
    document.getElementById("train").setAttribute("src", car + ".svg");
    document.getElementById("train").style.display = "none";
    document.getElementById("train").style.display = "block";
    initCar();
}
function initCar() {
    var car = document.getElementById("train_form").car.value;
    document.getElementById("train").setAttribute("src", car + ".svg");
    document.getElementById("train").onload = initCar;
    changeKind();
    changeDest();
    isDeparture = true;
}
function playSound(sound) {
    var audio = new Audio("audio/"+ sound + ".mp3");
    audio.play();
}
function playSounds(snd) {
    sounds = snd;
    current = 0 ;
    var audio = new Audio("audio/"+ sounds[current] + ".mp3");
    audio.play();

    audio.addEventListener('ended',function(e){
        current++;
        if(current < sounds.length) {
            source = "audio/" + sounds[current] + ".mp3";
            this.src = source
            this.pause();
            this.load();
            this.play();
        }
    });
}
function textToSpeech(message){
    var speech_api = "http://www.yukumo.net/api/v1/text2voice/voice.mp3?text="
    var audio = new Audio(speech_api + encodeURIComponent(message) );
    audio.play();
}
function findStation(station){
    var index = 0;
    order.forEach(function(value, i) {
        if(value["station"] == station) {
            index = i;
            return;
        }
    });
    return index;
}

function getStationPronounce(st){
    return station[st]["pronounce"] ? station[st]["pronounce"] : station[st]["string"];
}

var order = new Array();
var preLineKind = '';
var next = 0;
var isDeparture = true;
var isSoon = false;
function sayNext() {
    var lineKind = getLine() + "_" + getKind();
    if(lineKind != preLineKind || order.length == 0)  {
        preLineKind = lineKind;
        $.getJSON("js/"+ lineKind + ".json", function(data){
            order = data;
            next = findStation(getSource());
            sayNext();
        });
    };
    if(order.length > 0){
        if(next < 0){
            next = findStation(getSource());
        };
        if(next >= order.length){
            next = findStation(getSource());
        };
        if(isDeparture){
            var message = "この電車わ" +  kind[getKind()] +
                getStationPronounce(getDest()) + "行きです。";
            textToSpeech(message);
            next += getDirection();
            isDeparture = false
            return;
        };
        if(isSoon) {
            if(order[next]["change"]) {
                var message = "まもなく" + getStationPronounce(order[next]["station"]) + "です。";
                message += getStationPronounce(order[next]["station"] + "_change") + "はお乗り換えです。";
                textToSpeech(message);
            } else {
                var message = "まもなく" + getStationPronounce(order[next]["station"]) + "です。";
                textToSpeech(message);
            };
            if(getDest() == order[next]["station"]){
                next = findStation(getSource());;
                isDeparture = true
                return;
            };
            next += getDirection();
        } else {
            var message = "次わ" + getStationPronounce(order[next]["station"]) + "に止まります。";
            textToSpeech(message);
        };
        isSoon = isSoon ? false : true;
    };
}
