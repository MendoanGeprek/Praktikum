<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Produk</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">

    <div class="row justify-content-center">

        <div class="col-md-6">

            <div class="card shadow">

                <div class="card-header bg-success text-white">
                    <h4 class="mb-0">Tambah Produk</h4>
                </div>

                <div class="card-body">

                    <form action="{{ route('products.store') }}" method="POST">

                        @csrf

                        <div class="mb-3">

                            <label class="form-label">
                                Nama Produk
                            </label>

                            <input
                                type="text"
                                name="nama_produk"
                                class="form-control"
                                required>

                        </div>

                        <div class="mb-3">

                            <label class="form-label">
                                Harga
                            </label>

                            <input
                                type="number"
                                name="harga"
                                class="form-control"
                                required>

                        </div>

                        <button type="submit" class="btn btn-success">
                            Simpan
                        </button>

                        <a href="{{ route('products.index') }}" class="btn btn-secondary">
                            Kembali
                        </a>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>