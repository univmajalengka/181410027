<html>
<?php include "koneksi.php" ?>
<head>
<title></title>
</head>
<body>
	<center><h3>Data dinas</h3></center><br/>
		<a href="index.php?page=input_brg" dinas="btn btn-primary">
	<span dinas="glyphicon glyphicon-plus"></span> Tambah Data </a>
<br/><br/>
	<center><table class="table table-bordered"  border="1">
<thead> <tr>
		<th>ID DINAS</th>
		<th>NAMA</th>
		<th>ALAMAT</th>
		<th>LOGO</th>
	</tr>
</thead>
<tbody>
<?php 

	$ambil= $conn->query("SELECT * FROM dinas"); ?>
		<?php while($d = $ambil-> fetch_assoc()){ ?>
<tr>
		<td><?php echo $d['iddinas']; ?></td>
		<td><?php echo $d['nama']; ?></td>
		<td><?php echo $d['alamat']; ?></td>
		<td><?php echo $d['logo']; ?></td>
		<td>
		<a dinas="btn btn-primary" href="edit.php?iddinas=<?php echo $d['iddinas']; ?>">Edit</a>
		<a dinas="btn btn-danger" href="delete.php?iddinas=<?php echo $d['iddinas']; ?>">Hapus</a>
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
