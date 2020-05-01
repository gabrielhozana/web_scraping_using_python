<?php

	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "web_harvesting";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 

    $sql = "SELECT * FROM berita GROUP BY id DESC";
    $result = $conn->query($sql);

?>

<html>
    <style>
        #berita {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }

        #berita td, #berita thead {
          border: 1px solid #ddd;
          padding: 8px;
        }

        #berita tr:nth-child(even){background-color: #f2f2f2;}

        #berita tr:hover {background-color: #ddd;}

        #berita thead {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #4CAF50;
          color: white;
        }
    </style>
    <head>
        <title>
            Portal Berita Makassar
        </title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>

        <header>
            <h1>Portal Berita</h1>
            <nav>
                <!-- <a href="index.php">Home</a> -->
            </nav>
        </header>

        <article>
            <table width='100%' border=1 id="berita">

                <thead bgcolor='#CCCCCC' style="text-align: center; height: 50px">
                    <tr>
                        <td>Gambar Konten</td>
                        <td>Judul Konten</td>
                        <td>Isi Konten</td>
                        <td>Tanggal Diambil</td>
                        <td>Konten Dipublish</td>
                        <td>Sumber</td>                       
                    </tr>
                </thead>
                <tbody>                   
                    <?php
                    if ($result->num_rows > 0){
                        while ($row = $result->fetch_assoc()) {
                            echo '
                                <tr>
                                    <td>
                                        <div class="image-wrapper">
                                            <a href="'.$row['link'].'">
                                            <img src="'.$row['gambar'].'" width="200 " height="200">
                                            </a>
                                        </div>
                                    </td>
                                    <td><div class="image-wrapper">
                                            <a href="'.$row['link'].'">'.$row['judul'].'</a>
                                        </div>
                                        </td>
                                    <td>'.$row['isi'].'</td>
                                    <td>'.$row['date'].'</td>
                                    <td>'.$row['ket_waktu'].'</td>
                                    <td>'.$row['sumber'].'</td>
                                </tr>';
                        }
                    }else {
                        echo 'tidak ada data';
                    }

                    ?>                  
                </tbody>
            </table>
    
        </article>

        <footer class="article-meta">
            Portal Berita - 2020 - All Right Reserved
        </footer>

    </body>
</html>