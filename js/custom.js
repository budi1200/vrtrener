var fs = false; // VR nacin
var open = false; // Stanje okna v vr nacinu

// Preverjanje ce je uporabnik v VR nacinu
function checkVR(){
    document.querySelector('a-scene').addEventListener('enter-vr', function () {
        console.log("VR ENTER");
        fs = true;
    });
    document.querySelector('a-scene').addEventListener('exit-vr', function () {
        console.log("VR EXIT");
        fs = false;
    });
}
// Prikaz okna za vajo
function setWindow(vaja_id) {
    var vr_id = plan;
    var vaja = $(vaja_id).attr("id");
    var vid = document.getElementById("vid");

    if(fs){ //VR Nacin
        if(!open){
            vid.pause();
            nastaviVajo(vaja);
                console.log("waiting");
                canv();
                vid.load();
                vr_id.setAttribute("visible", true);
                vaja_id.setAttribute("material", "color: red");
                open = true;
        }else if(open){ // Zapri okno v vr nacinu ce je odprto
            vr_id.setAttribute("visible", false);
            vaja_id.setAttribute("material", "color: blue");
            open = false;
        }
    }else if(!fs){ //Normalno okno
        nastaviVajo(vaja);
        $("#okno_vaja").css("opacity", "0.97");
        $("#okno_vaja").css("pointerEvents", "auto");
        //vid.play();
    }
}

//Zapri okno v osnovnem nacinu
function off(el_id) {
    var a = document.getElementById(el_id);
    var vid = document.getElementById("vid");
    a.style.opacity = '0';
    a.style.pointerEvents = 'none';

	$('#naslov').html = "";
	$('#opis').html = "";
	$('#url').html = "";
    vid.load();
}

//Odstrani VR okno
function clearVR(el_id) {
    var el = document.querySelector('#' + el_id);
    el.setAttribute("visible", false);
}

// Pridobitev podatkov iz podatkovne baze
function nastaviVajo(str) {
  if (window.XMLHttpRequest) {
    xmlhttp=new XMLHttpRequest();
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
        // Parse string
        parser = new DOMParser();
        xmlDoc = parser.parseFromString(this.responseText,"text/xml");

        document.getElementById("naslov").innerHTML = xmlDoc.getElementById('ime').innerHTML;
        document.getElementById("opis").innerHTML = xmlDoc.getElementById('opis').innerHTML;
        $('#url').attr("src", xmlDoc.getElementById('url').innerHTML);
        vid.load();
    }
  }
  if(fs){
    xmlhttp.open("GET","vaja.php?q="+str,false);
  }else{
    xmlhttp.open("GET","vaja.php?q="+str,true);
  }
  xmlhttp.send();
}

function change(){
    var nazaj = $('#gumb_nazaj');
    var buttons = $('#div_button');
    var bg = $('.parent');

    if(nazaj.css('display') == 'none'){
        buttons.css('display', 'none');
        bg.css('background-color','rgba(0,0,0,0.4)');
        nazaj.css('display', 'block');
    }else{
        nazaj.css('display', 'none');
        bg.css('background-color','');
        buttons.css('display', 'block');
    }
}
