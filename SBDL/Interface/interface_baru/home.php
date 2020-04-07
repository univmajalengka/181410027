<html>
<head>
	<title>My web | Teknik Informatika Universitas Majalengka</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<div class="panel panel-primary">
	<div class="panel panel-heading">
		<center>
		<h2>MANAJEMEN ASET DINAS BMCK KABUPATEN MAJALENGKA</h2>
		</center>
		</div>
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="index.php?page=home">REGISTER</a></li>
					<li><a href="index.php?page=ruang">RUANG</a></li>
					<li><a href="index.php?page=barang">BARANG</a></li>
				</ul>
<div class="jumbotron">
<?php
	if(isset($_GET['page'])){
		$page = $_GET['page'];
 
		switch ($page) {
			case 'register':
				include "register.php";
				break;
			case 'ruang':
				include "ruang.php";
				break;
			case 'barang':
				include "barang.php";
				break;
			
			default:
				echo "<center><h3>Maaf. Halaman tidak di temukan !</h3></center>";
				break;
		}
	}else{
		include "home.php";
	}
 
	 ?>
	 </div>
 </div>
	<b><br><div class= "panel panel-primary">
			<div class= "panel-heading">
				<h3 class= "panel-title">copyright &copy; Dea Juwita - Universitas Majalengka</h3></b>
			</div>
		</div>
</body>
</html>