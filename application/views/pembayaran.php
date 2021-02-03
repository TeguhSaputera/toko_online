<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="btn btn-sm btn-success">
                <?php 
                $grand_total = 0;
                if ($keranjang = $this->cart->contents()){
                    foreach ($keranjang as $item){
                        $grand_total = $grand_total + $item['subtotal'];
                    }
                    echo "<h4>Total belanja anda : Rp. ".number_format($grand_total,0,',','.');
                
                ?>
            </div><br><br>
            <h3>Input Alamat Pengiriman dan Pembayaran</h3>
            <form method="post" action="<?php echo base_url('dashboard/proses_pesanan') ?>"><br><br> 
                <div class="form-group">
                    <label for="">Nama Lengkap</label>
                    <input type="text" name="nama" Placeholder="Nama Lengkap Anda" class="form-control"> 
                </div>

                <div class="form-group">
                    <label for="">Alamat Lengkap</label>
                    <input type="text" name="alamat" Placeholder="Alamat Lengkap Anda" class="form-control"> 
                </div>

                <div class="form-group">
                    <label for="">No. Telepon</label>
                    <input type="text" name="no_telp" Placeholder="Nomor Telepon Anda" class="form-control"> 
                </div>

                <div class="form-group">
                    <label for="">Jasa Pengiriman</label>
                    <select name="" id="" class="form-control">
                        <option value="">JNE</option>
                        <option value="">JNT</option>
                        <option value="">TIKI</option>
                        <option value="">POS Indonesia</option>
                        <option value="">Gojek</option>
                        <option value="">Grap</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="">Pilih Bank</label>
                    <select name="" id="" class="form-control">
                        <option value="">BCA - xxxxxxxxx</option>
                        <option value="">BNI - xxxxxxxxx</option>
                        <option value="">BRI - xxxxxxxxx</option>
                        <option value="">Mandiri - xxxxxxxxx</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-sm btn-primary mb-3">Pesan</button>

            </form>
            <?php
                }else{
                    echo "<h4>Keranjang belanja anda masih kosong";
                }
            ?>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>