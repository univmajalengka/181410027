<?php 
include 'koneksi.php';
 ?>
<body>
<table align="left" border="0">
<FORM METHOD="POST" action=".php">
<br>
<tr>
	<th></th>
	<th align="left"><h1>FORM EDIT DATA</h1></th>
<tr>
	<th align="right">Id Dinas :</th>
	<td><INPUT TYPE="text" name="id_karyawan"SIZE="30"></td>
</tr>
<tr>
	<th align="right">Nama Karyawan :</th>
	<td><INPUT TYPE="text" name="nama_barang" SIZE="30"></td>
</tr>

	
<?php
$con = mysqli_connect("localhost","root");

//display values in combobox/dropdown
$result = mysqli_query($con,"SELECT * FROM  ORDER BY nama_barang");
  while($row = mysqli_fetch_assoc($result))
   {
     echo "<option value='$row[idruang]'>$row[nama_barang]</option>";
    } 
?>
</select>
						<br>

					</div>
				</div>

</br>
</br>
	<th align="right"></th>
	<th><a dinas="glyphicon glyphicon-plus" href="edit_user.php">Simpan</a>
		
</tr>
</table>
</form>
</body>
</html>
