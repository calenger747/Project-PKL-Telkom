<?php
	include('../../config_config_cs/koneksi-data-peg-lr-com.php');

	$nik		= isset($_POST['nik']);
	$sql 		= "SELECT * FROM tbl_pegawai WHERE nik = '$nik'";
	$process 	= mysqli_query($connect, $sql);
	$num 		= mysqli_num_rows($process);
	$row 		= mysqli_fetch_array($process);
		if($num > 0){
			echo " ✔ Nama Pegawai : ". $row['nama'];
		}else{
			echo " ❌ Username tidak tersedia";
		}
?>