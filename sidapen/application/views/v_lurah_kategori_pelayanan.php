<?php include('head.php');?>

<body style="background: url(<?php echo base_url();?>berkas/img/blue.jpeg) no-repeat fixed center; background-size: 100% 100%">
    <?php include('navbar_lurah.php');?>
    <div style="margin-top: 80px;">
        <!-- MENU -->
        <?php include('menu_lurah.php') ;?>
        <!-- END MENU -->
        <!-- HOME -->
        <div class="col-md-9">
          <?php
            if($this->session->flashdata('pesan') != ''){
                echo '
                    <div class="alert alert-dismissable alert-info">
                      <button type="button" class="close" data-dismiss="alert">x</button>
                      '.$this->session->flashdata('pesan').'
                    </div>
                ';
            }
            ?>
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <div class="panel-title clearfix">
                        <span class="pull-left">
                            <span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;Data Kategori Pelayanan
                        </span>
                        <span class="pull-right">
                            <a class="btn btn-primary btn-xs" href="#" data-toggle="modal" title="Tambah Data" data-target="#myModal"><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;Tambah Kategori</a>
                            <!-- <a class="btn btn-primary btn-xs" href="<?php echo base_url();?>home_lurah/cetak_data_penduduk" target="_blank"><span class="glyphicon glyphicon-print"></span>&nbsp;&nbsp;Cetak Data PDF</a> -->
                        </span>
                    </div>
                </div>
                <div class="panel-body">
                    <?php
                      if(count($pelayanan) == 0){
                        echo "<h4 class='text-info'>Kategori Pelayanan Masih Kosong.</h4>";
                      }
                      else
                      { ?>
                    <table class='table table-striped table-bord table-hover display' id='example'>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kategori Pelayanan</th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                              $no = 1;
                              foreach ($pelayanan as $row) {
                            ?>
                            <tr>
                                <td>
                                    <?= $no++ ?>
                                </td>
                                <td>
                                    <?= $row->nama_kategori ?>
                                </td>
                                <td>
                                    <a href="#myModal<?= $row->id ?>" title="Edit Data"><button type="button" data-toggle="modal" data-target="#myModal<?php echo $row->id; ?>" class="btn btn-warning btn-sm"><span class='glyphicon glyphicon-edit'></span></button></a>
                                    <a href='delete_kategori/<?= $row->id ?>' class='btn btn-danger btn-sm' onclick='return confirm("Hapus Kategori Pelayanan?")'><span class='glyphicon glyphicon-remove'></span></a>
                                </td>
                            </tr>
                            <?php 
                              }
                            ?>
                        </tbody>
                    </table>
                    <?php
                      }
                      ?>
                </div>
            </div>
        </div>
        <!-- END HOME -->
    </div>
</body>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" class="pull" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="largeModalLabel">Tambah Kategori Pelayanan</h5>
            </div>
            <form role="form" method="post" action="<?php echo base_url();?>home_lurah/tambah_kategori_pelayanan">
                <div class="modal-body">
                    <div class="form-group">
                        <label>Kategori</label>
                        <textarea class="form-control" name="kategori" placeholder="Kategori Pelayanan"></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Tambah</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<?php
  foreach ($pelayanan as $row) {
?>

<div class="modal fade" id="myModal<?php echo $row->id;?>" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" class="pull" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="largeModalLabel">Edit Kategori Pelayanan</h5>
            </div>
            <form role="form" method="post" action="<?php echo base_url();?>home_lurah/edit_kategori">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="hidden" class="form-control" value="<?php echo $row->id; ?>" name="id" placeholder="ID" readonly>
                    </div>
                    <div class="form-group">
                        <label>Kategori</label>
                        <textarea class="form-control" name="kategori" placeholder="Kategori Pelayanan"><?php echo $row->nama_kategori; ?></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Update</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    </div>                  
                </div>
            </form>
        </div>
    </div>
</div>

<?php 
  }
?>