<?php
// MySQL ma'lumotlar omborini ulash
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dorixona";

$conn = new mysqli($servername, $username, $password, $dbname);

// Ulanishni tekshirish
if ($conn->connect_error) {
    die("Ulanishda xatolik: " . $conn->connect_error);
}


?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Dorixona qidiruv tizimi</title>
    <link rel="icon" href="https://static.tildacdn.com/tild3932-3530-4338-b338-636433313439/pngwingcom.png">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/sidebar.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/c0adbb8084.js" crossorigin="anonymous"></script>
</head>

<body>

    <!--navbar-->
    <nav class="navbar">
        <div class="nav">
            <img src="https://yt3.googleusercontent.com/kEtN3SBXT931OCh3nJy--V6wLR8XoenKuxSMwf-q1WwKo0tzCzekY16VRRj2b4uvt_Ep8qMKZw=s900-c-k-c0x00ffffff-no-rj" alt="logo">
            <div></div>

            <div id="pick-address" class="pincode">
                <div>
                    <img src="https://assets.pharmeasy.in/apothecary/images/ic_express%20delivery.svg?dim=16x0" alt="pin-add">
                    <p>Tez yetkazib berish</p>
                </div>
                <h4>sabi_09</h4>
                <i class="fa-solid fa-angle-down"></i>
            </div>
            </div>

        </div>
    </nav>
    <!--/navbar-->

    <!--search-->
    <div class="search-layout">
        <div>
            <div class="search-header">
                <h2>Nimani izlayapsiz?</h2>
                
            </div>
            <form method="post" action="#" class="search-bar">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" name="search" placeholder="dorilarni qidirish!" >
                <button class="btn btn-dark btn-sm" name="submit">qidirish</button>
            </form>
            <div>
                <table class="table">
                    <?php
                    if(isset($_POST['submit'])){
                        $search=$_POST['search'];
                        $sql="select * from `dori` where id like '%$search%' or nomi like '%$search%' or mamlakat like '%$search%'";
                        $result=mysqli_query($conn,$sql);
                        if($result){
                            if(mysqli_num_rows($result)>0){
                                echo '<thead>
                                <tr>
                                <th>№</th>
                                <th>Dorining nomi </th>
                                <th>Tavsif</th>
                                <th>Tarkibi</th>
                                <th>Ishlab chiqargan joyi </th>
                                
                                </tr>
                                </thead>
                                ';
                                while($row=mysqli_fetch_assoc($result)){
                                echo '<tbody>
                                <tr>
                                <td>'.$row['id'].'</td>
                                <td>'.$row['nomi'].'</td>
                                <td>'.$row['tavsif'].'</td>
                                <td>'.$row['Tarkibi'].'</td>
                                <td>'.$row['mamlakat'].'</td>
                                </tr>
                                </tbody>';
                            }
                            } 
                            else{
                                echo '<h2>Malumot topilmadi!</h2>';

                            }
                        }
                    }
                    ?>
                    
                </table>
            </div>
        </div>
    </div>
    <!--/search-->

    <!---nav card layout-->
    <div class="nav-card-layout container">
        <div>
            <div>
                <img src="https://assets.pharmeasy.in/apothecary/images/medicine_ff.webp?dim=256x0" alt="">
                <h4>Dorilar</h4>
            </div>
        </div>
    </div>
    <!--/nav card layout-->
  
    <!---shop categories start-->
    <div class="shop-categories container">
        <h1 class="title">Guruhlar boyicha ko'rish</h1>
        <div>
            <div>
                <img src="https://cdn01.pharmeasy.in/dam/discovery/categoryImages/b4a3a67a59783e0ca738884c9acc8e7b.png?f=png?dim=256x0" alt="">
                <h4>shaxsiy parvarish</h4>
            </div>
            <div>
                <img src="https://cdn01.pharmeasy.in/dam/discovery/categoryImages/62e6d7551ecf3a5da1d2336c41cc0549.png?f=png?dim=256x0" alt="">
                <h4>Sog'lom oziq-ovqat va ichimliklar</h4>
            </div>
            <div>
                <img src="https://cdn01.pharmeasy.in/dam/discovery/categoryImages/8a45f5baa68e3b72ae631003faa97bdb.png?f=png?dim=256x0" alt="">
                <h4>Go'zallik</h4>
            </div>
            <div>
                <img src="https://cdn01.pharmeasy.in/dam/discovery/categoryImages/ff5aaa03881e3016bf409f85b4e328aa.png?f=png?dim=256x0" alt="">
                <h4>Teri parvarishi</h4>
            </div>
            <div>
                <img src="https://cdn01.pharmeasy.in/dam/discovery/categoryImages/68ae87e29f4a3abbb8ed69fe7ecf057c.png?f=png?dim=256x0" alt="">
                <h4>Uyda parvarish qilish</h4>
            </div>
        </div>
    </div>
    <!---shop categories end-->
  
    <!----footer start-->
    <div class="footer container">
        <div class="footer-top">
            <div>
                <ul>

                    <h3>biz haqimizda</h3>
                    <li>kariyeralar</li>
                    <li>Blog</li>
                </ul>
            </div>
        </div>
    </div>
    <!----footer end-->

    <!--javascript file-->
    <script src="js/main.js"></script>
    <script src="js/sidebar.js"></script>

</body>

</html>