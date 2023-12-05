<!DOCTYPE html>
<head lang="pl">
	<meta charset="utf-8">
</head>
<body>
  <?php	
		include("config.php");
		$polaczenie = mysqli_connect($host, $user, $password);
		mysqli_query($polaczenie, "SET CHARSET utf8");
		mysqli_select_db($polaczenie, $database);
		$wynik = mysqli_query($polaczenie, "SELECT * FROM dane ORDER BY data DESC LIMIT 5");
		mysqli_close($polaczenie);
		
		print "<center><h1>Zagadka z różnicami między obrazkami</h1>";
		print "<img src='20roznic.jpg'>";
		print "<h2>Komentarze:</h2>";
		print "<table border='0' width='800'>";
		print "<tr><td align='left'>";
	  while ($rek = mysqli_fetch_array($wynik)) 
		{
			print $rek["wpis"]; 
			print "<br>";
			print $rek["imie"]; 
			print' '; 
			print $rek["nazwisko"]; 
			print' [URL: '; print $rek["mail"]; 
			print']. Wpis dodano: '; 
			print $rek["data"];
			print "<br><hr>";
		}
		print "</table>";
	?>		
	<a href="formularz.html">Chcę dodać wpis</a>
	</center>
</body>
</html>