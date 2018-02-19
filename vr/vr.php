<!DOCTYPE html>
<html>
<?php
    include('../connect.php');
?>
<head>
    <meta charset="utf-8">
    <title>VR Raziskovalna</title>
    <meta name="description" content="VR Trener">
    <script src="../js/aframe-v0.7.1.min.js"></script>
    <script src="../js/aframe-event-set-component.js"></script>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>-->
    <script src="../js/jquery-3.3.1.js"></script>
    <script src="../js/canvid.js"></script>
    <script src="../js/canvas.js"></script>
    <script src="../js/custom.js"></script>
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
                    <video id="vid" width="300" height="400" poster="wait.svg" autoplay muted loop>
                        <source id="url" src="" type="video/mp4">
				    </video>
                </div>
                <div class="opis">
                    <p id="opis"></p>
                </div>
            </div>
        </div>
    </div>
    <div id="canvWrapper">
    </div>
    <!-- Gumb domov za vecje zaslone-->
    <div id="domov"><a class="button gumb-domov" href="../index.php">Domov</a></div>
    <!--VR-->
    <a-scene id="ascene">
        <!-- 360 Slika -->
        <?php
        if(isset($_GET['s'])){
            $slikaSt = ($_GET['s']);
        }else{
            $slikaSt = 89;
        }
        ?>
        <a-sky id="img-sky" src=""></a-sky>

        <script>
            var sky = <?php echo $slikaSt; ?>;
            $("#img-sky").attr("src", "../slike/360_vr/SAM_100_00" + sky + ".jpg");
        </script>
		
		<a-entity onclick="window.location.href='vr.php?s=88'" position="-13.23 5.614 -14.944" geometry="height:5;width:5"></a-entity>

        <?php
        $query="SELECT * FROM tocke WHERE slika=$slikaSt";
        $result = pg_query($conn,$query);
         while($row = pg_fetch_array($result)){
             $v = $row['vaja_id'];
             echo '<a-entity id="vaja_' . $v . '" onclick=\'setWindow(vaja_' . $v . ')\' geometry="primitive: sphere" material="color: blue" position="' . $row['posX'] . " " . $row['posY'] . " " . $row['posZ'] . '" radius="1.25"></a-entity>';
         }
    	?>
        <!--<a-plane id="plan" visible="false" height="52" width="60" position="56.823 12.895 27.601" rotation="0 -96 0"></a-plane>-->

        <!-- Kamera + cursor -->
        <a-entity camera look-controls>
            <a-entity 
                cursor="fuse: true; fuseTimeout: 500;" 
                position="0 0 -5" 
                geometry="primitive: ring; radiusInner: 0.04; radiusOuter: 0.06" 
                material="color: black; shader: flat" 
                event-set__1="_event: mouseenter; color: springgreen" 
                event-set__2="_event: mouseleave; color: black">
            </a-entity>
        </a-entity>
    </a-scene>
</body>

</html>
