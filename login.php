<?php  

    include 'backend/conexion.php';
    session_start();

    $username = $_POST['user_name'];
    $password = $_POST['password'];
    

    $query = "SELECT * FROM user WHERE rut='$username' AND password='$password'"; 
    $result = mysqli_query($mysqli,$query)or die(mysqli_error());  
    $num_row = mysqli_num_rows($result);  
    $row=mysqli_fetch_array($result);
    

    if( $num_row >=1 ) {

    
    $_SESSION['loginUser']='true'; 
    header("location: principal.php");
    echo 'true';  
     
        }  
        else{  
            echo '<script>alert("Login incorrecto");</script>';  
           // header("location: index.php");
        }  
?>
