<DOCTYPE html>
<?php
$url = "https://api.openweathermap.org/data/2.5/weather?id=2886241&type=accurate&units=metric&mode=xml&APPID=baf12c4cd63ad729832998400da8d602";
$getweather = simplexml_load_file($url);
$gethumidity = $getweather->city->humidity['value'];
$gettemp = $getweather->city id="2886241" name="Regierungsbezirk Köln"->temperature['value'];
?>
<html>
<head>
    <title>Weather Test</title>
    <script></script>
</head>
<body>
    <h1>Wetter Test</h1>
    <p>Das testet die Openweather API:</p>
	<ul>
		<li>Feuchtigkeit: <?php echo($gethumidity)?>%</li>
		<li>Temperatur: <?php echo($gettemp)?> &deg;C<li/>
	<ul/>
</body>
</html>
