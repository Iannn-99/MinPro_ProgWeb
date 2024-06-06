<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "user_auth";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MiniProject</title>
    <link rel="stylesheet" href="pemesanan.css">
</head>
<body>
    <nav>
        <div class="header">
            <a href="Home.html">Home</a>
            <a href="#about">About</a>
            <a href="#artis">Artist</a>
            <a href="#contact">Contact</a>
            <div class="search">
                <form action="#">
                    <input type="text" placeholder="Search.." name="search">
                    <button type="submit">GO!</button>
                </form>
            </div>
        </div>
    </nav>
    <main>
        <div class="container">
            <h1><a href="Detail.php?id=1">Booking Tiket Konser</a></h1>
            <div class="ticket-info">
                <?php
                if (isset($_GET['id'])) {
                    $event_id = intval($_GET['id']);

                    $sql = "SELECT * FROM events2 WHERE id = $event_id";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<div class='box'>";
                            echo "<img src='" . $row["image"] . "' alt='Event Image' id=''>";
                            echo "<p>Date: " . $row["date"] . "</p>";
                            echo "<p>Time: " . $row["time"] . "</p>";
                            echo "<p>Location: " . $row["location"] . "</p>";
                            echo "<a href='" . $row["detail_link"] . "'>Details</a>";
                            echo "</div>";
                        }
                    } else {
                        echo "No results";
                    }
                }
                ?>
            </div>

            <div class="ticket-info">
                <form action="#" method="post" id="order-form">     
                    <div class="form-group">
                        <h2>Pilih Tiket</h2>
                        <label for="pilih_tanggal">Pilih Tanggal:</label>
                        <select id="pilih_tanggal" name="pilih_tanggal" required>
                            <option value="">Pilih Tanggal</option>
                            <option value="29-06-2024">29-06-2024</option>
                            <option value="30-06-2024">30-06-2024</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="jenis_tiket">Jenis Tiket:</label>
                        <select id="jenis_tiket" name="jenis_tiket" required>
                            <option value="">Pilih Jenis Tiket</option>
                            <option value="VIP Pink">VIP Pink</option>
                            <option value="VIP Blue">VIP Blue</option>
                            <option value="Green">Green</option>
                            <option value="Gray">Gray</option>
                            <option value="Yellow">Yellow</option>
                            <option value="Purple">Purple</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="jumlah_tiket">Jumlah Tiket:</label>
                        <select id="jumlah_tiket" name="jumlah_tiket" required>
                            <option value="">Pilih Jumlah Tiket</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <fieldset>
                            <legend><strong>Data Diri Penonton</strong></legend>
                            <label for="fullname">Nama Lengkap:</label>
                            <br>
                            <input type="text" name="fullname" id="fullname" minlength="3" maxlength="50" required>
                            <br>
                            <label for="telNumber">Nomor Hp:</label>
                            <br>
                            <input type="tel" name="telNumber" id="telNumber" maxlength="12" required>
                            <br>
                            <label for="email">Email:</label>
                            <br>
                            <input type="email" name="email" id="email" required>
                            <br>
                        </fieldset>
                    </div>
                    <div class="submit">
                        <button type="submit">Pesan</button>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <footer>
        <p>71220827-Yohanes Filza Putra Prasetya<br>
            71220830-Daniel Kimyuwono<br>
            71220888-Nahason Christian Ade Herlambang<br>
            MiniProject &copy; Copyright
        </p>
    </footer>
</body>
</html>

<?php
$conn->close();
?>
