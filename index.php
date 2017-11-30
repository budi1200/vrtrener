<!DOCTYPE html>
<html>
	<head>
		<title>VR Trener</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="animate.css">
		<script src="scripts/slide.js"></script>
        <meta charset="utf-8">
	</head>
	<body>
		<div class="parent">
			<div class="child">
				<img src="slike_prva_stran/logo.png" alt="logo" width="225" height="200">
			</div>
			<div class="child text">
				<blockquote id="quote">"Take care of your body. It's the only place you have to live."</blockquote>
			</div>
			<div class="child text">
				<p id="quote_author">Jim Rohn</p>
			</div>
			<div class="child">
				<p id="tipka_fitnes">Fitnes:
					<select name="izberi" size="1">
						<option value="velenje" selected="selected">Velenje</option>
						<option value="slovenj_gradec">Slovenj Gradec</option>
						<option value="ravne_na_koroškem">Ravne na Koroškem</option>
					</select>
				</p>
			</div>
			<div id="div_button">
				<a href="vr/vr.php"><button class="button"><span>Vhod</span></button></a> <!--TODO: Popravek gumbov-->
			</div>
			<div class="footer">
				<img class="image" src="slike_prva_stran/facebook.png" alt="facebook_icon" width="30" height="30">
				<img class="image" src="slike_prva_stran/twitter.png" alt="twitter_icon" width="30" height="30">
				<img class="image" src="slike_prva_stran/instagram.png" alt="instagram_icon" width="30" height="30">
				<img class="image" src="slike_prva_stran/email.png" alt="email_icon" width="30" height="30">
				<img class="image" src="slike_prva_stran/youtube.png" alt="youtube_icon" width="30" height="30">
			</div>
		</div>
        <div class="slide">
			<img class="mySlides animate-right" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_1.jpg" alt="slika1">
			<img class="mySlides animate-right" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_2.jpg" alt="slika2">
			<img class="mySlides animate-right" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_3.jpg" alt="slika3">
			<img class="mySlides animate-right" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_4.jpg" alt="slika4">
			<img class="mySlides animate-right" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_5.jpg" alt="slika5">
			<img class="mySlides animate-right" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_6.jpg" alt="slika6">
		</div>
		<script>SlideShow()</script>
	</body>
</html>
