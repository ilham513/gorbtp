<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Ilham Setia BHakti">

    <title>Homepage Penjadwalan GOR BTP</title>

    <!-- Bootstrap core CSS -->
    <link href="<?=base_url('css/bootstrap.min.css')?>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?=base_url('css/dashboard.css')?>" rel="stylesheet">

    <style>
    /* Show it is fixed to the top */
        body {
        min-height: 75rem;
        padding-top: 4.5rem;
        }
    </style>
  </head>

    <body>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="#">GOR BTP</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
        </ul>
        <div class="form-inline mt-2 mt-md-0">
          <a href="<?=site_url('login')?>"><button class="btn btn-success my-2 my-sm-0" >Login</button></a>
        </div>
      </div>
    </nav>

    <main role="main" class="container">
      <div class="jumbotron">
        <center><h1>Jadwal Penggunaan Lapangan Klub Voli</h1></center><br/>
        <table class="table table-striped table-hover" id="sortTable" width="100%" cellspacing="0">
              <thead class="thead-dark">
                <tr>
                  <th>Nama Penyewa</th>
                  <th>Waktu Sewa</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($jadwal as $jadwal): ?>
                <tr>
                  <td width="150">
                    <?php echo $jadwal->nama_penyewa ?>
                  </td>
                  <td width="150">
                    <?php echo $jadwal->waktu_sewa ?>
                  </td>
                </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
      </div>
    </main>
    </body>
</html>