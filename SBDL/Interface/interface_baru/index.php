<html>
<head>
</head>
<body>
<div class="panel panel-primary">
	<div class="panel panel-heading">
		<center>
		<h2>Manajemen Aset Di Dinas BMCK Kabupaten Majalengka</h2>
		</center>
		</div>
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="index.php?page=home">HOME</a></li>
					<li><a href="index.php?page=ruang">RUANG</a></li>
					<li><a href="index.php?page=barang">BARANG</a></li>
				</ul>
<?php
	if(isset($_GET['page'])){
		$page = $_GET['page'];
 
		switch ($page) {
			case 'home':
				include "home.php";
				break;
		}
	}else{
		include "home.php";
	}
 
	 ?>
</body>
</html>
