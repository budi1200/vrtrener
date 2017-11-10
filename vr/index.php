<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>VR Raziskovalna</title>
    <meta name="description" content="VR Trener">
    <script src="../scripts/aframe.js"></script>
	<script src="../scripts/aframe-event-set-component.js"></script>
	<script src="../scripts/custom.js"></script>
	<script src="../scripts/set-image.js"></script>
  </head>
  <body>
    <a-scene>
		<!-- 360 Slika -->
      <a-sky id="img-sky" src="360/SAM_100_0089.jpg"></a-sky>
	  
	  <a-entity id="sphere" geometry="primitive: sphere" material="color: blue" position="33.154 15.231 3.313" radius="1.25"
				event-set__enter="_event: click; material.color: yellowgreen;"
				event-set__leave="_event: mouseleave; material.color: blue;">
	  </a-entity>
	  
	  <!-- Kamera + cursor -->
	  <a-entity camera look-controls>
        <a-cursor cursor="fuse: true; fuseTimeout: 500;"
				  position= "0 0 -5"
				  geometry= "primitive: ring"
				  material= "color: black; shader: flat"
				  event-set__1="_event: mouseenter; color: springgreen"
				  event-set__2="_event: mouseleave; color: black">
		</a-cursor>
      </a-entity>
    </a-scene>
  </body>
</html>