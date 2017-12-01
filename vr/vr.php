<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>VR Raziskovalna</title>
    <meta name="description" content="VR Trener">
    <script src="../scripts/aframe.js"></script>
    <script src="../scripts/aframe-event-set-component.js"></script>
    <!--<script src="../scripts/set-image.js"></script>-->
    <!--<script src="../scripts/jquery-3.2.1.min.js"></script>-->
    <script src="../scripts/custom.js"></script>
    <link rel="stylesheet" type="text/css" href="../style.css">
    <link rel="stylesheet" type="text/css" href="vr.css">
</head>

<body>
    <!--Okno za vajo-->
    <div id="test_1" class="window" onclick="off('test_1')">
        <div class="box_text">
            <!--Naslov vaje in gumb domov-->
            <div class="vaja_naslov">
                <h4 id="naslov">Vaja Brisalci</h4>
                <div id="gumb_domov_wrapper"><a href="../index.php"><button class="button gumb-domov">Domov</button></a></div>
                <!--TODO: Popravek Gumbov-->
                <!--TODO: Gumb zapri okno-->
            </div>
            <!-- Video in besedilo vaje -->
            <div class="box_body">
                <div class="video">
                    <video id="vid" width="300" height="400" poster="loading.png" loop>
					   <source src="../gif/zunaj/Brisalci.mp4" type="video/mp4">
				    </video>
                </div>
                <div class="opis">
                    <p>is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It's also called placeholder (or filler) text. It's a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout. Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Gumb domov za vecje zaslone-->
    <div id="domov"><a href="../index.php"><button class="button gumb-domov">Domov</button></a></div>
    <!--TODO: Popravek gumbov-->

    <!--VR-->
    <a-scene>
        <!-- 360 Slika -->
        <a-assets>
            <video id="vide" src="../gif/zunaj/Brisalci.mp4" autoplay loop></video>
        </a-assets>
        <a-sky id="img-sky" src="../360/SAM_100_0089.jpg"></a-sky>

        <a-text value="Culpa ne ullamco ita dolore, a pariatur an incurreret. A dolor aliquip si veniam
                       voluptate se dolore anim, ea quae singulis despicationes, mentitum exercitation
                       ea eiusmod. Summis e litteris do amet ad legam expetendis est quae sint ex magna
                      ita duis duis legam id quo o
                       coniunctione ex qui hic enim sint velit, ita malis varias do possumus, hic
                       quorum quae dolor ingeniis." geometry="primitive: plane; height: auto; width: auto" color="#000" scale="20 20 0.01" position="54.768 36.445 43.172" rotation="0 -104.83 0.32"></a-text>
        <a-plane id="plan" visible="false" src="#vide" height="50" width="35" position="56.823 12.895 27.601" rotation="0 -103 0"></a-plane>
        <a-plane id="plan2" visible="false" height="52" width="60" position="56.823 13.44 40.571" rotation="0 -103 0" material=""></a-plane>

        <a-entity id="sphere" onclick="setWindow('test_1', 'plan', 'plan2')" geometry="primitive: sphere" material="color: blue" position="33.154 15.231 3.313" radius="1.25" event-set__enter="_event: click; material.color: yellowgreen;" event-set__leave="_event: mouseleave; material.color: blue;">
        </a-entity>

        <a-entity id="sphere2" onclick="setWindow('test_2')" geometry="primitive: sphere" material="color: red" position="33.154 15.231 -11.313" radius="1.25" event-set__enter="_event: click; material.color: yellowgreen;" event-set__leave="_event: mouseleave; material.color: blue;">
        </a-entity>

        <!-- Kamera + cursor -->
        <a-entity camera look-controls>
            <a-entity cursor="fuse: true; fuseTimeout: 500;" position="0 0 -5" geometry="primitive: ring; radiusInner: 0.04; radiusOuter: 0.06" material="color: black; shader: flat" event-set__1="_event: mouseenter; color: springgreen" event-set__2="_event: mouseleave; color: black">
            </a-entity>
        </a-entity>
    </a-scene>
    <script>
        checkVR();

    </script>
</body>

</html>
