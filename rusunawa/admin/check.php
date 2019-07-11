<?php
error_reporting(0);
include 'connection.php';
$id=$_GET['id'];
$unit=$_GET['kode'];
//$nama=$_POST['nama'];
//$alamat=$_POST['alamat'];

$query="UPDATE FROM booking_unit WHERE kode_booking='$id'";
$hasil=mysqli_query($conn,$query);
if ($hasil == "approve") {
	$update1 = mysqli_query($conn, "UPDATE tbl_unit SET status = 'diterima!' WHERE id_unit='$unit'");
	echo "<script>alert('Data Berhasil Di terima')
    location.href='/rusunawa/admin/index_booking.php'</script>";
}else if($hasil == "disapprove"){
	$update2 = mysqli_query($conn, "UPDATE tbl_unit SET status = 'tidak diterima' WHERE id_unit='$unit'");
    echo "<script>alert('Gagal menerima Data! Silahkan Coba Lagi')
    location.href='/rusunawa/admin/index_booking.php'</script>";
}

?>
