<?php
session_start();
include 'config.php';

// A hibák megjelenítésének engedélyezése
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Ellenőrizzük, hogy a felhasználó be van-e jelentkezve
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit();
}

// Az ügyfél nevének lekérdezése az adatbázisból
$username = $_SESSION["username"];
$stmt = $conn->prepare("SELECT nev FROM users WHERE username = ?");
if ($stmt === false) {
    die('MySQL prepare statement failed: ' . $conn->error);
}
$stmt->bind_param("s", $username);
$stmt->execute();
$stmt->bind_result($nev);

// Ellenőrizd, hogy van-e találat
if (!$stmt->fetch()) {
    die('Nincs találat a felhasználóra!');
}
$stmt->close();
?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Üdvözlünk a BBT Autóbérlésnél</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background: linear-gradient(135deg, #6a82fb, #fc5c7d);
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
            color: white;
        }
        .hero {
            text-align: center;
            padding: 50px;
            background: rgba(0, 0, 0, 0.4);
            border-radius: 15px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3);
            width: 80%;
            margin: 20px 0;
        }
        .hero h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }
        .hero p {
            font-size: 18px;
            margin-bottom: 40px;
        }
        .hero .btn-danger {
            font-size: 16px;
            padding: 12px 30px;
            border-radius: 25px;
            background-color: #ff758c;
            border: none;
            transition: background-color 0.3s ease-in-out;
        }
        .hero .btn-danger:hover {
            background-color: #ff5a7f;
        }
        .category-card {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            padding: 20px;
            margin-bottom: 30px;
            transition: transform 0.3s ease-in-out;
        }
        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
        }
        .category-card .card-title {
            font-size: 24px;
            margin-bottom: 15px;
        }
        .category-card .btn-dark {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 25px;
            border-radius: 25px;
        }
        .category-card .btn-dark:hover {
            background-color: #444;
        }
    </style>
</head>
<body>

    <!-- HERO SZEKCIÓ -->
    <header class="hero">
        <div>
        <h1>Üdvözöljük, <?php echo htmlspecialchars($nev); ?>!</h1><br>
        <p>Válaszd ki a tökéletes autót és indulj útnak!</p>
        <a href="logout.php" class="btn btn-danger btn-lg"><i class="fas fa-sign-out-alt"></i> Kijelentkezés</a>
        </div>
    </header>

    <!-- AUTÓK KATEGÓRIÁK -->
    <section id="autok" class="container py-5">
        <h2 class="text-center section-title mb-5">Válassz kategóriát</h2>
        <div class="row">
            <!-- 0-2 ÉV JOGOSÍTVÁNY -->
            <div class="col-md-4">
                <div class="card category-card text-center">
                    <div class="card-body">
                        <h3 class="card-title"><i class="fas fa-road"></i> Kezdőknek</h3>
                        <p>0-2 éves jogosítvánnyal vezethető autók.</p>
                        <a href="kezdoautok.php" class="btn btn-dark">Megnézem</a>
                    </div>
                </div>
            </div>
            <!-- 2-5 ÉV JOGOSÍTVÁNY -->
            <div class="col-md-4">
                <div class="card category-card text-center">
                    <div class="card-body">
                        <h3 class="card-title"><i class="fas fa-car"></i> Haladóknak</h3>
                        <p>2-5 éves jogosítvánnyal vezethető autók.</p>
                        <a href="haladoautok.php" class="btn btn-dark">Megnézem</a>
                    </div>
                </div>
            </div>
            <!-- 5+ ÉV JOGOSÍTVÁNY -->
            <div class="col-md-4">
                <div class="card category-card text-center">
                    <div class="card-body">
                        <h3 class="card-title"><i class="fas fa-crown"></i> Profi vezetőknek</h3>
                        <p>5+ éves jogosítvánnyal vezethető autók.</p>
                        <a href="profiautok.php" class="btn btn-dark">Megnézem</a>
                    </div>
                </div>
            </div>
        </div>
    </section>


</body>
</html>
