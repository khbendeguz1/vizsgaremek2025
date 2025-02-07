<?php
// Adatbázis kapcsolat
$conn = mysqli_connect("localhost", "autoberlo", "Szily2025", "autoberlo");

$sql = "SELECT * FROM cars"; // Autók lekérdezése az adatbázisból
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html>

<head>
    <title>Autók</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                <div class="col-md-4">
                    <div class="card">
                        <img src="<?php echo $row["image"]; ?>" class="card-img-top" alt="<?php echo $row["name"]; ?>">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $row["name"]; ?></h5>
                            <p class="card-text"><?php echo $row["description"]; ?></p>
                            <a href="#" class="btn btn-primary">Bérlés</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</body>

</html>