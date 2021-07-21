<section style="background-image: url(<?= base_url('assets/img/bg/bg6.jpg');?>)">  
    <div class="row">
        <div class="col-lg-12 text-center ">
        <h2 class="section-heading" style="color:white">Edit Provinsi</h2>
        </div>    
        <button type="button" class="btn btn-ButtonRound py-2 px-6 bg-gray-50 rounded-md"> <a href="<?= base_url('provinsi/'); ?>index"><i class="previous round">&#8249;</i> Kembali</a></button>
    </div>
    <div class="section-inner">
        <div class="container">
            <div class="formAddUpdate">
                <?php foreach ($post as $prov) : ?>
                <form action="<?= base_url()?>Provinsi/prosesUpdateProvinsi/<?=$prov['id_provinsi']?>" enctype="multipart/form-data" method="POST">
                    <div class="form-group">
                        <label for="kode_provinsi" class="nAddUpdate">Kode Provinsi</label>
                        <input type="text" class="form-control" name="kode_provinsi" id="kode_provinsi" placeholder="Ex: A1"></input>
                        <label for="nama_provinsi" class="nAddUpdate">Nama Provinsi</label>
                        <input type="text" class="form-control" name="nama_provinsi" id="nama_provinsi" placeholder="Masukan Nama Provinsi"></input>
                        <label for="gambar"class="nAddUpdate">Gambar (.png)</label>
                        <input type="file" class="form-gambar" id="logo_provinsi" name="logo_provinsi" >  
                        <input type="hidden" id="id_provinsi" name="id_provinsi" value="<?= $prov['id_provinsi'] ?>">
                    </div>
                    <button type="submit" class="btn btn-tAddUpdate">Update</button>
                </form>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>


