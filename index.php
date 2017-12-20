<!DOCTYPE html>
<html>
	<head>
		<title>VR Trener</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="scripts/animate.css">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <script type="text/javascript" src="scripts/animate.js"></script>
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
                <a href="stran_navodila/navodila.html"><button class="button"><span>Navodila</span></button></a>
				<a href="vr/vr.php"><button class="button"><span>Vhod</span></button></a> <!--TODO: Popravek gumbov-->
                <a href="stran_opis/opis.html"><button class="button"><span>Opis</span></button></a>
			</div>
			<div class="footer">
                <a href="https://www.facebook.com/VR-Trener-526799451008707/"><img src="slike_prva_stran/facebook.png" alt="facebook_icon" width="30" height="30"></a>
                <a href="https://twitter.com/"><img src="slike_prva_stran/twitter.png" alt="twitter_icon" width="30" height="30"></a>
                <a href="https://www.instagram.com/vrtrener/"><img src="slike_prva_stran/instagram.png" alt="instagram_icon" width="30" height="30"></a>
                <a href=""><img src="slike_prva_stran/email.png" alt="email_icon" width="30" height="30"></a>
                <a href="https://www.youtube.com/channel/UCkKLyU4n9NgGFFmnDZRKHlw?view_as=subscriber"><img src="slike_prva_stran/youtube.png" alt="youtube_icon" width="30" height="30"></a>
			</div>
		</div>
        <div class="container">
        <div id="slider">
            <ul class="slides">
                <li class="slide"><img class="image" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_1.jpg" alt="slika1"></li>
                <li class="slide"><img class="image" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_2.jpg" alt="slika2"></li>
                <li class="slide"><img class="image" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_3.jpg" alt="slika3"></li>
                <li class="slide"><img class="image" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_4.jpg" alt="slika4"></li>
                <li class="slide"><img class="image" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_5.jpg" alt="slika5"></li>
                <li class="slide"><img class="image" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_6.jpg" alt="slika6"></li>
                <li class="slide"><img class="image" src="slike_postopek_dela/fitnes_gim_zunaj/fitnes_gim_1.jpg" alt="slika1"></li>
            </ul>
        </div>
        </div>
	</body>
</html>
