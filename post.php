<?php
	$wpis=$_POST['wpis'];
	$imie=$_POST['imie'];
	$nazwisko = $_POST['nazwisko'];
	$mail=$_POST['mail']; 
	
	include("config.php");
	$polaczenie = mysqli_connect($host, $user, $password);
	mysqli_query($polaczenie, "SET CHARSET utf8");
	mysqli_select_db($polaczenie, $database);
	mysqli_query($polaczenie, "INSERT INTO dane SET imie='$imie', 
	  nazwisko='$nazwisko', mail='$mail', data=NOW(), wpis='$wpis'");
	
	header('location: index.php');
?>


\\dodac usuwanie komnentarzy, zmiane komentarzy itp. moze logowanie rejestracje na strone i logowanie.