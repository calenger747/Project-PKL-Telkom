<?php include ('config_config_cs/fungsi_no_otomatis_tambah-pegawai.php'); ?>

    <!-- Custom CSS -->
    <link href="dist/css/step.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/libs/select2/dist/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="assets/libs/jquery-minicolors/jquery.minicolors.css">
    <link rel="stylesheet" type="text/css" href="assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" type="text/css" href="assets/libs/quill/dist/quill.snow.css">

    <link href="assets/libs/toastr/build/toastr.min.css" rel="stylesheet">

            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
        <div class="container-fluid">

                <div class="row">
                    <!-- Column -->
                    <div class="col-md-6 col-lg-2 col-xlg-2">
                        <div class="card card-hover">
                            <div class="box bg-cyan text-center">
                                <a href="?view=data-pegawai&id=9973850hupa&name=pegaaplication&data Pegawai">
                                    <h1 class="font-light text-white"><i class="mdi mdi-account-multiple"></i></h1>
                                    <h6 class="text-white">Pegawai</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
            <div class="row">
                <div class="card col-12">
                    <div class="card-body wizard-content">
                          <div class="x_content">
                            <div class="container">
                              <div class="stepwizard">
                                  <div class="stepwizard-row setup-panel">
                                      <div class="stepwizard-step col-xs-2"> 
                                          <a href="#step-1" type="button" class="btn btn-success btn-circle" data-toggle="tooltip" title="Data Diri"><span class="mdi mdi-human"></span></a>
                                          <p>Pribadi</p>
                                      </div>
                                      <div class="stepwizard-step col-xs-2"> 
                                          <a href="#step-2" type="button" class="btn btn-default btn-circle" data-toggle="tooltip" title="Alamat"><span class="mdi mdi-map-marker"></span></a>
                                          <p>Alamat</p>
                                      </div>
                                      <div class="stepwizard-step col-xs-2"> 
                                          <a href="#step-3" type="button" class="btn btn-default btn-circle" data-toggle="tooltip" title="Bagian & Jabatan"><span class="mdi mdi-tie"></span></a>
                                          <p>Bagian</p>
                                      </div>
                                      <div class="stepwizard-step col-xs-2"> 
                                          <a href="#step-4" type="button" class="btn btn-default btn-circle" data-toggle="tooltip" title="Telp & Status"><span class="mdi mdi-phone"></span></a>
                                          <p>Telp</p>
                                      </div>
                                      <div class="stepwizard-step col-xs-2"> 
                                          <a href="#step-5" type="button" class="btn btn-default btn-circle" data-toggle="tooltip" title="Rekening"><span class="mdi mdi-credit-card"></span></a>
                                          <p>Rekening</p>
                                      </div>
                                      <div class="stepwizard-step col-xs-2"> 
                                          <a href="#step-6" type="button" class="btn btn-default btn-circle" data-toggle="tooltip" title="Finish Section"><span class="mdi mdi-check"></span></a>
                                          <p>Finish</p>
                                      </div>            
                                  </div>
                              </div>
                              <form class="form-horizontal" action="config_config_cs/tambah-pegawai-con.php" method="post" role="form">
                                <input type="hidden" value="<?php echo $kodeLahir; ?>" name="id_lahir">
                                <input type="hidden" value="<?php echo $kodeAlamat; ?>" name="id_alamat">
                                <input type="hidden" value="<?php echo $kodeStatus; ?>" name="id_status">
                                <input type="hidden" value="<?php echo $kodeTabungan; ?>" name="id_tabungan">
                                <input type="hidden" value="<?php echo $kodeTelp; ?>" name="id_telp">
                                <input type="hidden" value="<?php echo $kodeJabatan; ?>" name="id_jabatan">
                                <input type="hidden" value="<?php echo $kodeDokumen; ?>" name="id_dokumen">
                                <input type="hidden" value="<?php echo $kodeFile; ?>" name="id_file"><br>
                                <div class="clearfix"></div>
                                  <div class="panel panel-primary setup-content" id="step-1">
                                      <div class="panel-body">
                                          <div class="form-group">
                                              <label class="control-label">Nomer Induk Pegawai</label>
                                              <div class="row mb-6">
                                                <div class="col-md-2">
                                                    <input type="text" data-toggle="tooltip" title="NIP Terakhir" class="form-control" value="<?php echo $nomor_nip; ?>" readonly>
                                                </div>
                                                <div class="col-md-3">
                                                    <input type="text" data-toggle="tooltip" title="NIP Baru" class="form-control" name="nip" id="validationDefault05" placeholder="Nomer Induk Pegawai" required=""> 
                                                </div>
                                            </div>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Nama Pegawai</label>
                                              <input maxlength="100" name="nama" type="text" required="required" class="form-control" placeholder="Nama Pegawai"/>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Jenis Kelamin</label>
                                              <div class="row mb-3">
                                                <div class="col-md-2">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" class="custom-control-input" id="customControlValidation1" name="jenis_kelamin" value="LK" >
                                                        <label class="custom-control-label" for="customControlValidation1">Laki Laki</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" class="custom-control-input" id="customControlValidation2" name="jenis_kelamin" value="P">
                                                        <label class="custom-control-label" for="customControlValidation2">Perempuan</label>
                                                    </div>    
                                                </div>
                                            </div>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Tempat, Tanggal Lahir</label>
                                              <div class="row mb-6">
                                                <div class="col-md-6">
                                                    <input id="name" name="tmpt_lahir" type="text" class="form-control">
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="input-group">
                                                    <input type="text" name="tgl_lahir" class="form-control" id="datepicker-autoclose" placeholder="yyyy-mm-dd">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>    
                                                </div>
                                            </div>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Agama</label>
                                              <select name="agama" class="form-control">
                                                <option>Pilih Agama</option>
                                                  <?php
                                                $q = mysqli_query($connect, "SELECT * FROM tbl_data_agama"); 

                                                  while ($a = mysqli_fetch_array($q)){
                                                    echo "<option value='$a[0]'>$a[1]</option>";
                                                  
                                                  }
                                                  ?>
                                              </select>
                                          </div>
                                          <div class="form-action">
                                              <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                          </div>
                                      </div>
                                  </div>
                                  
                                  <div class="panel panel-primary setup-content" id="step-2">
                                      <div class="panel-body">
                                          <div class="form-group">
                                              <div class="row">    
                                                <div class="col-md-5">
                                                    <label for="name">Nama Jalan</label>
                                                    <input type="text" name="nama_jalan" class="form-control"/>
                                                </div>
                                                <div class="col-md-1">
                                                    <label for="name">RT</label>
                                                    <input type="text" name="rt" class="form-control"/>
                                                </div>
                                                <div class="col-md-1">
                                                    <label for="name">RW</label>
                                                    <input type="text" name="rw" class="form-control"/>
                                                </div>
                                                <div class="col-md-5">
                                                    <label for="name">Kelurahan</label>
                                                    <input type="text" name="kelurahan" class="form-control"/>
                                                </div>
                                              </div>
                                          </div>
                                          <div class="form-group">
                                              <div class="row">    
                                                <div class="col-md-6">
                                                    <label class="control-label">Kecamatan</label>
                                                    <input type="text" name="kecamatan" class="form-control"/>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="name">Kota/Kabupaten</label>
                                                    <input type="text" name="kota" class="form-control"/>
                                                </div>
                                              </div>
                                          </div>
                                          <div class="form-group">
                                              <div class="row">    
                                                <div class="col-md-6">
                                                    <label class="control-label">Provinsi</label>
                                                    <input type="text" name="provinsi" class="form-control"/>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="name">Kode Pos</label>
                                                    <input type="text" name="kode_pos" class="form-control"/>
                                                </div>
                                              </div>
                                          </div>
                                          <div class="form-action">
                                              <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="panel panel-primary setup-content" id="step-3">
                                      <div class="panel-body">
                                          <div class="form-group">
                                              <label class="control-label">Jabatan</label>
                                              <select name="jabatan" class="form-control">
                                                <option>Pilih Jabatan</option>
                                                  <?php
                                                $q = mysqli_query($connect, "SELECT * FROM tbl_data_jabatan"); 

                                                  while ($a = mysqli_fetch_array($q)){
                                                    echo "<option value='$a[0]'>$a[1]</option>";
                                                  
                                                  }
                                                  ?>
                                              </select>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Divisi</label>
                                              <select name="divisi" class="form-control">
                                                <option>Pilih Divisi</option>
                                                  <?php
                                                $q = mysqli_query($connect, "SELECT * FROM tbl_data_divisi"); 

                                                  while ($a = mysqli_fetch_array($q)){
                                                    echo "<option value='$a[0]'>$a[1]</option>";
                                                  
                                                  }
                                                  ?>
                                              </select>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">No NPWP</label>
                                              <input maxlength="100" name="npwp" type="text" class="form-control" placeholder="Nama Pegawai"/>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Tanggal Masuk</label>
                                              <div class="input-group">
                                                <input type="text" name="tgl_masuk" class="form-control" id="datepicker-autoclose2" date-format="yyyy-MM-dd" placeholder="yyyy-mm-dd">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                            </div>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Tanggal Mulai Kontrak 1</label>
                                              <div class="input-group">
                                                <input type="text" name="tgl_mulai_kontrak_1" class="form-control" id="datepicker-autoclose4" date-format="yyyy-MM-dd" placeholder="yyyy-mm-dd">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                            </div>
                                          </div>
                                            <div class="form-group">
                                              <label class="control-label">Tanggal Selesai Kontrak 1</label>
                                              <div class="input-group">
                                                <input type="text" name="tgl_selesai_kontrak_1" class="form-control" id="datepicker-autoclose5" date-format="yyyy-MM-dd" placeholder="yyyy-mm-dd">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                            </div>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Tanggal Mulai Kontrak 2</label>
                                              <div class="input-group">
                                                <input type="text" name="tgl_mulai_kontrak_2" class="form-control" id="datepicker-autoclose6" date-format="yyyy-MM-dd" placeholder="yyyy-mm-dd">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                            </div>
                                            </div>
                                            <div class="form-group">
                                              <label class="control-label">Tanggal Selesai Kontrak 2</label>
                                              <div class="input-group">
                                                <input type="text" name="tgl_selesai_kontrak_2" class="form-control" id="datepicker-autoclose7" date-format="yyyy-MM-dd" placeholder="yyyy-mm-dd">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                            </div>
                                          </div>
                                          <div class="form-action">
                                              <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="panel panel-primary setup-content" id="step-4">
                                      <div class="panel-body">
                                          <div class="form-group">
                                              <label>No. Telp <small class="text-muted">(999) 999-9999</small></label>
                                                <input type="text" name="telp" class="form-control phone-inputmask" id="phone-mask" placeholder="Enter No. Telp">
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">No. Handphone</label>
                                              <input type="Number" maxlength="13" class="form-control" name="nohp" placeholder="Indonesia Phone Number">
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Status Pegawai</label>
                                              <select name="status_pegawai" class="form-control">
                                                <option>Status Pegawai</option>
                                                  <?php
                                                $q = mysqli_query($connect, "SELECT * FROM tbl_data_status_pegawai"); 

                                                  while ($a = mysqli_fetch_array($q)){
                                                    echo "<option value='$a[0]'>$a[1]</option>";
                                                  
                                                  }
                                                  ?>
                                              </select>
                                          </div>
                                          <div class="form-group">
                                              <label class="control-label">Status Kawin</label>
                                              <select name="status_kawin" class="form-control">
                                                <option>Status Kawin</option>
                                                  <?php
                                                $q = mysqli_query($connect, "SELECT * FROM tbl_data_status_kawin"); 

                                                  while ($a = mysqli_fetch_array($q)){
                                                    echo "<option value='$a[0]'>$a[1]</option>";
                                                  
                                                  }
                                                  ?>
                                              </select>
                                          </div>
                                          <div class="form-action">
                                              <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="panel panel-primary setup-content" id="step-5">
                                      <div class="panel-body">
                                          <div class="form-group">
                                              <label class="control-label">Nama Bank</label>
                                              <select name="bank" class="form-control">
                                                <option>Nama Bank</option>
                                                  <?php
                                                $q = mysqli_query($connect, "SELECT * FROM tbl_data_bank"); 

                                                  while ($a = mysqli_fetch_array($q)){
                                                    echo "<option value='$a[0]'>$a[1]</option>";
                                                  
                                                  }
                                                  ?>
                                              </select>
                                          </div>
                                          <div class="form-group">
                                              <label>No. Rekening</label>
                                              <input type="text" class="form-control" name="rekening" placeholder="No. Rekening">
                                          </div>
                                          <div class="form-action">
                                              <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="panel panel-primary setup-content" id="step-6">
                                      <div class="panel-body">
                                          <div class="form-group">
                                              <div class="custom-control custom-checkbox mr-sm-2">
                                                    <input type="checkbox" class="custom-control-input" id="customControlAutosizing1" required="">
                                                    <label class="custom-control-label" for="customControlAutosizing1">I agree with the Terms and Conditions.</label>
                                                </div>

                                          </div>
                                          <div class="form-action">
                                              <input type="submit" name="tambah" class="btn btn-primary pull-right" value="Tambah">
                                              <a href="javascript:history.back()"><button type="button" class="btn btn-warning">BACK</button></a>
                                          </div>
                                      </div>
                                  </div>
                                </form>
                          </div>
                        </div>
                    </div>
                </div>
            </div>

                

                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
        </div>

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
    <script src="assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="dist/js/pages/mask/mask.init.js"></script>
    <script src="assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="assets/libs/quill/dist/quill.min.js"></script>
    <script src="assets/extra-libs/step/step.js"></script>

    <script src="assets/libs/toastr/build/toastr.min.js"></script>
    <script>
     //***********************************//
        // For select 2
        //***********************************//
        $(".select2").select2();

        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayHighlight: true
        });
        jQuery('#datepicker-autoclose2').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayHighlight: true
        });
        jQuery('#datepicker-autoclose3').datepicker({
            format: "yyyy",
            autoclose: true,
            viewMode: "years", 
            minViewMode: "years"
        });
        jQuery('#datepicker-autoclose4').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayHighlight: true
        });
        jQuery('#datepicker-autoclose5').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayHighlight: true
        });
        jQuery('#datepicker-autoclose6').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayHighlight: true
        });
        jQuery('#datepicker-autoclose7').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

    </script>
    <?php include ('config_config_cs/fungsi_toast_notifikasi_tambah-pegawai.php'); ?>