<?php
$servername = "localhost";
$username = "autoberlo";
$password = "Szily2025";
$dbname = "autoberlo";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM carshalad";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="hu">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Haladó autók</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">BBT Autóbérlő</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="welcome.php">Főoldal <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="kapcsolat.php">Kapcsolat</a>
                </li>
            </ul>
        </div>
    </nav>
    <style>
        body {
            background: linear-gradient(135deg, #6a82fb, #fc5c7d);
            height: auto;
            display: flex;
            flex-direction: column;
            align-items: left;
            font-family: 'Arial', sans-serif;
            color: white;
        }
    </style>
</head>

<body>
    <div class="container mt-4">
        <h2 class="mb-3">Haladó autók listája</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Márka</th>
                    <th>Típus</th>
                    <th>Kép</th>
                    <th>Művelet</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()) { ?>
                    <tr>
                        <td><?= $row['id'] ?></td>
                        <td><?= $row['marka'] ?></td>
                        <td><?= $row['tipus'] ?></td>
                        <td><img src="<?= $row['kep'] ?>" alt="Car Image" style="width:100px;"></td>
                        <td>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#modal<?= $row['id'] ?>">Megtekintés</button>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

    <?php $result->data_seek(0);
    while ($row = $result->fetch_assoc()) { ?>
        <div class="modal fade" id="modal<?= $row['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="modalLabel<?= $row['id'] ?>" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalLabel<?= $row['id'] ?>"><?= $row['marka'] . " " . $row['tipus'] ?></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img src="<?= $row['kep'] ?>" alt="Car Image" class="img-fluid mb-3">
                        <p><?= $row['leiras'] ?></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Bezárás</button>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>

</body>

</html>

<?php $conn->close(); ?>