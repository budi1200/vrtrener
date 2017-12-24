<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>VR Raziskovalna</title>
    <meta name="description" content="VR Trener">
    <script src="../js/aframe-v0.7.1.min.js"></script>
    <script src="../js/aframe-event-set-component.js"></script>
    <!--<script src="../scripts/set-image.js"></script>-->
    <!--<script src="../scripts/jquery-3.2.1.min.js"></script>-->
    <script src="../js/custom.js"></script>
    <script src="../js/canvas.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="vr.css">
</head>

<body onload="checkVR()">
    <!--Okno za vajo-->
    <div id="okno_vaja" class="window" onclick="off('okno_vaja')">
        <div class="box_text">
            <!--Naslov vaje in gumb domov-->
            <div class="vaja_naslov">
                <h4 id="naslov"></h4> <!-- NASLOV VAJE -->
                <div id="gumb_domov_wrapper"><a class="button gumb-domov" href="../index.php">Domov</a></div>

                <!--TODO: Gumb zapri okno-->
            </div>
            <!-- Video in besedilo vaje -->
            <div class="box_body">
                <div class="video">
                    <video id="vid" width="300" height="400" poster="loading.png" autoplay muted loop>
                        <source id="url" src="" type="video/mp4">
				    </video>
                </div>
                <div class="opis">
                    <p id="opis"></p>
                </div>
            </div>
        </div>
    </div>

    <canvas id="canv" width="500" height="500"></canvas>

    <!-- Gumb domov za vecje zaslone-->
    <div id="domov"><a class="button gumb-domov" href="../index.php">Domov</a></div>

    <!--VR-->
    <a-scene>
        <!-- 360 Slika -->
        <a-sky id="img-sky" src="../slike/360_vr/SAM_100_0089.jpg"></a-sky>

        <a-plane id="plan" visible="false" src="#canv" height="52" width="60" position="56.823 12.895 27.601" rotation="0 -103 0"></a-plane>

        <a-entity id="sphere" onclick="setWindow('sphere', 'plan', '1')" geometry="primitive: sphere" material="color: blue" position="33.154 15.231 3.313" radius="1.25">
        </a-entity>

        <a-entity id="sphere2" onclick="setWindow('sphere2', 'plan', '2')" geometry="primitive: sphere" material="color: blue" position="33.154 15.231 -11.313" radius="1.25">
        </a-entity>

        <a-entity id="sphere3" onclick="setWindow('sphere3', 'plan', '3')" geometry="primitive: sphere" material="color: blue" position="30.154 15.231 -14.313" radius="1.25">
        </a-entity>

        <!-- Kamera + cursor -->
        <a-entity camera look-controls>
            <a-entity cursor="fuse: true; fuseTimeout: 500;" position="0 0 -5" geometry="primitive: ring; radiusInner: 0.04; radiusOuter: 0.06" material="color: black; shader: flat" event-set__1="_event: mouseenter; color: springgreen" event-set__2="_event: mouseleave; color: black">
            </a-entity>
        </a-entity>
    </a-scene>
</body>

</html>
