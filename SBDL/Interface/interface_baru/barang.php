<html>
<?php include "koneksi.php" ?>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<center><h3>DATA BARANG</h3></center><br/>
		<a href="index.php?page=input_barang" class="btn btn-primary">
	<span class="glyphicon glyphicon-plus"></span> Tambah Data </a>
<br/><br/>
	<center><table class="table table-bordered"  border="1">
<thead> <tr>
		<th>ID BARANG</th>
		<th>KODE BARANG</th>
		<th>NAMA BARANG</th>
		<th>MERK</th>
		<th>RUANG</th>

	</tr>
</thead>
<tbody>
<?php 

	$ambil= $conn->query("SELECT * FROM data_barang"); ?>
		<?php while($d = $ambil-> fetch_assoc()){ ?>
<tr>
		<td><?php echo $d['id_barang']; ?></td>
		<td><?php echo $d['kd_brg1']; ?></td>
		<td><?php echo $d['nama_barang']; ?></td>
		<td><?php echo $d['merk']; ?></td>
		<td><?php echo $d['nama_ruang']; ?></td>
		<td>
		<a class="btn btn-primary" href="edit.php?idguru=<?php echo $d['idguru']; ?>">Edit</a>
		<a class="btn btn-danger" href="delete.php?idguru=<?php echo $d['idguru']; ?>">Hapus</a>
		</td>
</tr>

<?php 
}
?>
<tbody>
</table>
</center>
</body>
</html>