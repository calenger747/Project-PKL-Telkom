<div class="col-md-3">
<div class="panel panel-warning">
  <div class="panel-heading flippp">
    <h3 class="panel-title"><span class="glyphicon glyphicon-align-justify"></span>&nbsp;&nbsp;Menu</h3>
  </div>
  <div class="panel-body panelll">
            <div class="panel panel-info">
              <div class="panel-heading flipp cursor">
                <h3 class="panel-title"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;Home&nbsp;&nbsp;<b class="caret"></b></h3>
              </div>
              <div class="panel-body panell">
                <div class="list-group">
                  <a href="<?php echo base_url();?>home_rw" class="list-group-item">
                    <span class="glyphicon glyphicon-globe"></span>&nbsp;&nbsp;Beranda
                  </a>

                  <a id="flip-admin" class="list-group-item cursor">
                    <span class="glyphicon glyphicon-stats"></span>&nbsp;&nbsp;Grafik Penduduk
                  </a>

                  <div id="panel-admin" class="form-group disnone">
                    <br/>
                  <form action="<?php echo base_url();?>home_rw/grafik_penduduk" method="get">
                    <div class="input-group">
                      <center><label class="control-label">masukkan RT/RW</label></center>
                      <div class="col-md-12">
                        <input class="form-control" type="text" name="rt" placeholder="00" required>
                        <input class="form-control" type="text" name="rw" placeholder="00" required>
                      </div>

                      <span class="input-group-btn">
                        <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-arrow-right"></span></button>
                      </span>
                    </div>
                  </form>
                  </div>

                  <a href="<?php echo base_url();?>home_rw/data_kk" class="list-group-item">
                    <span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;Kepala Keluarga
                  </a>
                    
                  <a href="<?php echo base_url();?>home_rw/data_penduduk" class="list-group-item">
                    <span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;Penduduk
                  </a>

                  <a href="<?php echo base_url();?>home_rw/data_penduduk_sementara" class="list-group-item">
                    <span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;Penduduk Sementara
                  </a>
                </div>
              </div>
            </div>

            <div class="panel panel-info">
              <div class="panel-heading flipp2 cursor">
                <h3 class="panel-title"><span class="glyphicon glyphicon-stats"></span>&nbsp;&nbsp;Jumlah Data&nbsp;&nbsp;<b class="caret"></b></h3>
              </div>
              <div class="panel-body panell2">
                <ul class="list-group">
                  <a class="list-group-item">
                    <span class="badge"><?php echo $total_hari;?></span>
                    <span class="glyphicon glyphicon-circle-arrow-down"></span>&nbsp;&nbsp;Hari Ini
                  </a>
                  <a class="list-group-item" id="flip">
                    <span class="badge">
                    <?php echo $total;?>
                    </span>
                    <span class="glyphicon glyphicon-dashboard"></span>&nbsp;&nbsp;Penduduk
                  </a>
                   <a class="list-group-item" id="flip">
                    <span class="badge">
                    <?php echo $total_sementara;?>
                    </span>
                    <span class="glyphicon glyphicon-dashboard"></span>&nbsp;&nbsp;Penduduk Sementara
                  </a>
                  <a class="list-group-item" id="flip">
                    <span class="badge">
                    <?php echo $jumlah_kk;?>
                    </span>
                    <span class="glyphicon glyphicon-dashboard"></span>&nbsp;&nbsp;Kepala Keluarga
                  </a>
                </ul>
              </div>
            </div>

<!--
            <div class="panel panel-info">
              <div class="panel-heading flipp3 cursor">
                <h3 class="panel-title"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Pencarian Data&nbsp;&nbsp;<b class="caret"></b></h3>
              </div>
              <div class="panel-body panell3 disnone">
                <ul class="list-group">
                  <div class="form-group">
                    <form action="<?php echo base_url();?>home_rw/cari_rtrw" method="post">
                      <div class="input-group">
                        <input class="form-control" placeholder="ketik nomor RT" type="text" name="rt">
                        <input class="form-control" placeholder="ketik nomor RW" type="text" name="rw">
                      </div>
                        <center><button class="btn btn-primary btn-sm" type="submit"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;cari</button></center>
                    </form>
                  </div>
                </ul>
              </div>
            </div>
-->

    </div>
  </div>
</div>