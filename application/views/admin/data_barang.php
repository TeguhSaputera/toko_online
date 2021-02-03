<div class="container-fluid">
    <button class="btn btn-sm btn-primary mb-3" data-toggle="modal" data-target="#tambah_barang">Tambah Barang <i class="fas fa-plus fa-sm"></i></button>
    <div class="table-responsive">
        <table class="table table-bordered">
        <tr>
            <th>No.</th>
            <th>Nama Barang</th>
            <th>Keterangan</th>
            <th>Kategori</th>
            <th>Harga</th>
            <th>Stok</th>
            <th colspan="3" class="text-center">Aksi</th>
        </tr>
        <?php 
            $no = 1;
            foreach ($barang as $brg):
        ?>
        <tr class="text-center">
            <td><?php echo $no++ ?></td>
            <td><?php echo $brg->nama_brg ?></td>
            <td><?php echo $brg->keterangan ?></td>
            <td><?php echo $brg->kategori ?></td>
            <td><?php echo $brg->harga ?></td>
            <td><?php echo $brg->stok ?></td>
            <td>
             <?php echo anchor('admin/data_barang/detail_barang/' .$brg->id_brg, '<div class="btn btn-sm btn-success"><i class="fas fa-search-plus"></i></div>') ?>
            </td>
            <td><?php echo anchor('admin/data_barang/edit/'. $brg->id_brg, '<div class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></div>') ?></td>
            <td><?php echo anchor('admin/data_barang/hapus/'. $brg->id_brg, '<div class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></div>') ?></td>
        </tr>
            <?php endforeach; ?>
    </table>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="tambah_barang" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Input Barang</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url(). 'admin/data_barang/tambah_aksi' ?>" method="post" enctype="multipart/form-data">
            <div class="form-group">
                  <label for="">Nama Barang</label>  
                  <input type="text" name="nama_brg" id="" class="form-control">
            </div>
            <div class="form-group">
                  <label for="">Keterangan</label>  
                  <input type="text" name="keterangan" id="" class="form-control">
            </div>
            <div class="form-group">
                  <label for="">Kategori</label>  
                  <select name="kategori" id="" class="form-control">
                        <option value="">== Pilih Kategori ==</option>
                        <option value="elektronik">elektronik</option>
                        <option value="pakaian pria">pakaian pria</option>
                        <option value="pakaian wanita">pakaian wanita</option>
                        <option value="pakaian anak">pakaian anak</option>
                        <option value="peralatan olahraga">peralatan olahraga</option>
                  </select>
            </div>
            <div class="form-group">
                  <label for="">Harga Barang</label>  
                  <input type="text" name="harga" id="" class="form-control">
            </div>
            <div class="form-group">
                  <label for="">Stok Barang</label>  
                  <input type="number" name="stok" id="" class="form-control">
            </div>
            <div class="form-group">
                  <label for="">Gambar Produk</label><br>  
                  <input type="file" name="gambar" id="" class="form-control">
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
         </form>
      </div>
    </div>
  </div>
</div>