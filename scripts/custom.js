var fs = false;

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

function setWindow(el_id, vr_id, vaja_id) {
    var vid = document.getElementById("vid");
    if(fs){
        var el = document.querySelector('#' + vr_id);
        nastaviVajo(vaja_id);
                console.log("waiting");
                canv();
                vid.load();
                el.setAttribute("visible", true);
    }else if(!fs){
        var test = document.getElementById(el_id);
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
    // code for IE7+, Firefox, Chrome, Opera, Safari
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
  xmlhttp.open("GET","vaja.php?q="+str,false);
  xmlhttp.send();
}
