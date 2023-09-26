<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Ilham Setia BHakti">

    <title>Penyewa</title>

    <!-- Bootstrap core CSS -->
    <link href="<?=base_url()?>css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?=base_url()?>css/dashboard.css" rel="stylesheet">
  </head>

  <body>
	<?php $this->load->view('v_admin_comp/nav'); ?>

    <div class="container-fluid">
      <div class="row">
	  <?php $this->load->view('v_admin_comp/side_bar'); ?>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h2">Penyewa</h1>
          </div>

		  <div class="jumbotron">
      <a href="<?=site_url('admin/input')?>"><button type="button" class="btn btn-primary">Tambah Penyewa</button></a><br/>
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>Name</th>
										<th>No_telp</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($penyewa as $penyewa): ?>
									<tr>
										<td width="150">
											<?php echo $penyewa->nama ?>
										</td>
										<td>
											<?php echo $penyewa->no_telp ?>
										</td>
										<td>
											<a href="<?=site_url('admin/edit/') . $penyewa->id?>">Edit</a> | <a href="<?=site_url('admin/hapus/') . $penyewa->id?>">Hapus</a>
										</td>
                  </tr>
									<?php endforeach; ?>
								</tbody>
							</table>
		  </div>
        </main>
      </div>
    </div>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    
	<script>
      feather.replace()
    </script>
  
  </body>
</html>
