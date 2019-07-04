
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="assets/extra-libs/multicheck/multicheck.css">
    <link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="assets/libs/toastr/build/toastr.min.css" rel="stylesheet">
    

            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <div class="row">
                     <!-- Column -->
                    <div class="col-md-6 col-lg-2 col-xlg-3">
                        <div class="card card-hover">
                            <div class="box bg-warning text-center">
                                <a href="?view=tambah-gaji-pegawai&id=9973865hupa&name=pegaaplication&tambahGajiPegawai">
                                    <h1 class="font-light text-white"><i class="mdi mdi-pencil"></i></h1>
                                    <h6 class="text-white">Tambah</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Data Gaji Pegawai</h5>
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Nama Pegawai</th>
                                                <th>Email</th>
                                                <th>Periode</th>
                                                <th>Jabatan</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>  
                                        <tbody>
                                            <?php
                                        
                                            $view = mysqli_query($connect, "SELECT * FROM gaji JOIN tbl_pegawai ON tbl_pegawai.nik = gaji.nik JOIN tbl_data_email_pegawai ON tbl_data_email_pegawai.nip_pegawai = gaji.nik JOIN  tbl_jabatan ON tbl_pegawai.id_jabatan = tbl_jabatan.id_jabatan JOIN tbl_data_jabatan ON tbl_jabatan.jabatan = tbl_data_jabatan.kode_jabatan");
                                            $no =1;
                                            while ($row = mysqli_fetch_array($view)) {
                                                
                                                
                                            ?>
                                            <tr>
                                                <td><?php echo $no;?></td>
                                                <td><?php echo $row['nik'];?> - <?php echo $row['nama'];?></td>
                                                <td><?php echo $row['email_pegawai'].$row['domain'];?></td>
                                                <td><?php echo bln_indo($row['tgl']);?></td>
                                                <td><?php echo $row['nama_jabatan'];?></td>
                                                <td><a title="Lihat Detail" data-toggle="tooltip" href="?view=detail-gaji-pegawai&id=997386798hupa&name=pegaaplication&detailGajiPegawai&id=<?= $row['id']; ?>">
                                                    <span class="fa fa-list"></span>
                                                </a> |
                                                <a href="?view=edit-gaji-pegawai&id=997386798hupa&name=pegaaplication&editGajiPegawai&id=<?= $row['id']; ?>" data-toggle="tooltip" title="Edit Data">
                                                    <span class="fa fa-edit"></span>
                                                </a> |
                                                <a href="?view=save-as-gaji-pegawai&id=997386798hupa&name=pegaaplication&saveAsGajiPegawai&id=<?= $row['id']; ?>" data-toggle="tooltip" title="Save As Data">
                                                    <span class="fa fa-search-plus"></span>
                                                </a> |
                                                <a href="#<?= $row['id']; ?>" data-target="#myModal<?= $row['id']; ?>" data-toggle="modal" title="Add Note">
                                                    <span class="fas fa-comment"></span>
                                                </a> |
                                                <a href="#<?= $row['id']; ?>" data-target="#myModalEmail<?= $row['id']; ?>" data-toggle="modal" title="Sent Email">
                                                    <span class="fas fa-paper-plane"></span>
                                                </a> |
                                                <a href="config_config_cs/del-gaji-pegawai-con.php?id=<?= $row['id']; ?>" data-toggle="tooltip" title="Hapus Data">
                                                    <span class="fa fa-trash"></span>
                                                </a>
                                                </td>
                                            </tr>

                            <div class="modal fade" id="myModal<?php echo $row['id']; ?>" tabindex="-1" role="modal" aria-labelledby="exampleModalLabel" aria-hidden="true ">
                                <div class="modal-dialog" role="document ">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Tambah Catatan Gaji</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true ">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="form-horizontal" action="config_config_cs/add-note-gaji-con.php" method="post">
                                                <div class="card-body">
                                                    <input type="hidden" name="id" class="form-control" id="lname" value="<?= $row['id']; ?>">
                                                    <div class="form-group row">
                                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Catatan</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" name="note" class="form-control" id="lname" placeholder="Enter Note" value="" />
                                                        </div>
                                                    </div>
                                                    <div class="border-top">
                                                        <div class="card-body">
                                                            <input type="submit" name="simpan_note" class="btn btn-primary" value="SIMPAN">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="myModalEmail<?= $row['id']; ?>" tabindex="-1" role="modal" aria-labelledby="exampleModalLabel" aria-hidden="true ">
                                    <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Kirim Email Gaji Pegawai</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true ">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="form-horizontal" action="config_config_cs/update-note-gaji-con.php" method="post" id="tambah">
                                                <div class="card-body">
                                                    <input type="hidden" name="id" class="form-control" id="lname" value="<?= $row['id']; ?>">
                                                    <div class="form-group row">
                                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Email Pegawai</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" name="email" class="form-control" id="lname" placeholder="Email Pegawai" value="<?= $row['email_pegawai']; ?><?= $row['domain']; ?>" readonly />
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Judul</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" name="judul" class="form-control" id="lname" placeholder="Judul Email" value="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Isi Pesan </label>
                                                        <div class="col-sm-9">
                                                            <textarea id="editor<?php echo $row['id']; ?>" name="editor2" rows="10" cols="100"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="border-top">
                                                        <div class="card-body">
                                                            <input type="submit" name="tambah" class="btn btn-primary" id="submit" value="TAMBAH">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                <script src="assets/libs/ckeditor_standard/ckeditor.js"></script>
                                <script type="text/javascript">
                                    if ( typeof CKEDITOR == 'undefined' ) {
                                        document.write(
                                            'CKEditor not found');
                                    } else {
                                        var editor = CKEDITOR.replace( 'editor<?php echo $row['id']; ?>' );               
                                        CKFinder.setupCKEditor( editor, '' );            
                                    }
                                </script>

                                            <?php
                                                $no++;
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->


                        
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js"></script>
    <!-- this page js -->
    <script src="assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="assets/extra-libs/DataTables/datatables.min.js"></script>

    <script src="assets/libs/toastr/build/toastr.min.js"></script>
    <script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $('#zero_config').DataTable({
            "bProcessing": true,
            "bServerSide": true,
            "ajax": "serverside/response.php?view=gaji-pegawai",
        });
    </script>
<?php include ('config_config_cs/fungsi_toast_notifikasi_tambah_barang.php'); ?>