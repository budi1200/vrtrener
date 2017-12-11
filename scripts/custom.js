var fs = false;
var open = false;

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

function setWindow(vr_id, vaja_id) {
    var vid = document.getElementById("vid");
    if(fs){ //VR Nacin
        var el = document.querySelector('#' + vr_id);
        if(!open){
            nastaviVajo(vaja_id);
                console.log("waiting");
                canv();
                vid.load();
                el.setAttribute("visible", true);
                open = true;
        }else if(open){
            var el = document.querySelector('#' + vr_id);
            el.setAttribute("visible", false);
            open = false;
        }
    }else if(!fs){ //Normalno okno
        var test = document.getElementById('okno_vaja');
        nastaviVajo(vaja_id);
        test.style.opacity = '0.9';
        test.style.pointerEvents = 'auto';
        vid.play();
    }
}

function off(el_id) {
    var a = document.getElementById(el_id);
    var vid = document.getElementById("vid");
    a.style.opacity = '0';
    a.style.pointerEvents = 'none';

    document.getElementById("naslov").innerHTML = "";
    document.getElementById("opis").innerHTML = "";
    document.getElementById("url").src="";
    vid.load();
}

function clearVR(el_id) {
    var el = document.querySelector('#' + el_id);
    el.setAttribute("visible", false);
}

function nastaviVajo(str) {
  if (window.XMLHttpRequest) {
    xmlhttp=new XMLHttpRequest();
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
        parser = new DOMParser();
        xmlDoc = parser.parseFromString(this.responseText,"text/xml");

        document.getElementById("naslov").innerHTML = xmlDoc.getElementById('ime').innerHTML;
        document.getElementById("opis").innerHTML = xmlDoc.getElementById('opis').innerHTML;
        document.getElementById("url").src = (xmlDoc.getElementById('url').innerHTML);
        //console.log(this.responseText);
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
