<html>

<head>
    <title>Pop up</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<style>
* {
    margin: 0;
    padding: 0;
}

body,
html {
    font-family: Calibri, "times new roman", sans-serif;
    /*background-image: url('images/aweb.jpg');*/
    /*background-repeat: no-repeat;*/
}

/*#button {
    margin: 5% auto;
    width: 100px;
    text-align: center;
}

#button a {
    background-image: linear-gradient(to bottom, #2a95c5, #21759b);
    background-image: -o-linear-gradient(to bottom, #2a95c5, #21759b);
    background-image: -ms-linear-gradient(to bottom, #2a95c5, #21759b);
    background-image: -moz-linear-gradient(to bottom, #2a95c5, #21759b);
    background-image: -webkit-linear-gradient(to bottom, #2a95c5, #21759b);
    background-color: #2e9fd2;
    width: 86px;
    height: 30px;
    vertical-align: middle;
    padding: 10px;
    color: #fff;
    text-decoration: none;
    border: 1px solid transparent;
    border-radius: 5px;
}

#popup {
    width: 100%;
    height: 100%;
    position: fixed;
    background: rgba(0, 0, 0, .15);
    top: 0;
    left: 0;
    z-index: 9999;
    visibility: visible;
}
*/
.window {
    width: 500px;
    height: 490px;
    background: #fff;
    border-radius: 9px;
    position: relative;
    box-shadow: 0 0 2px rgba(0, 0, 0, .70);
    margin: 10% auto;
    opacity: 10%;
    text-align: center;
}

.close-button {
    width: 20px;
    height: 20px;
    background: #000;
    border-radius: 100%;
    border: -1px solid #fff;
    display: block;
    text-align: center;
    color: #fff;
    text-decoration: none;
    position: absolute;
    top: -6px;
    right: -5.5px;
}
</style>

<body onload="window.print()">
    <div class="window">
        <?php
        date_default_timezone_set('Asia/Jakarta');
        $tgl1 = date ("Y-m-d H:i:s");
        $tgl2 = date('Y-m-d H:i:s', strtotime('+2 days', strtotime($tgl1)));
        include 'connection.php';
      // Menampilkan input dari form
      $sql = mysqli_query($conn,"SELECT * FROM booking_unit WHERE kode_booking IN(SELECT MAX(kode_booking)FROM booking_unit)");
    $row = mysqli_fetch_array($sql);
    $kode_booking = $row['kode_booking'];
    $tgl_booking =  $tgl1;
    $nama = $row['nama'];
    $no_ktp = $row['no_ktp'];
    $alamat = $row['alamat'];
    $no_hp = $row['no_hp'];
    ?>
        <h3><img src='images/kotadepok.png' width='40px' height='40px'>&nbsp;&nbsp;UPT. Rusunawa Depok </h3>
        <hr>
        <center><b>
                <h5>Kode Booking : <br>
                    <?php echo $kode_booking; ?>
                </h5>
        </center></b><br>
        Nama Booking :
        <?php echo $nama;?> <br>
        No Identitas :
        <?php echo $no_ktp;?> <br>
        Alamat :
        <?php echo $alamat;?> <br>
        No.Handphone :
        <?php echo $no_hp;?> <br><br>
        <hr>
        Dari Tanggal :
        <?php echo $tgl_booking;?><br>
        <b>Berlaku Sampai Dengan :
            <?php echo $tgl2;?></b><br>
        <div class="footer">
            <b><br>
                <h6>* Harap mencatat kode booking dengan benar</h6>
        </div><br>
    </div>
</body>

</html>