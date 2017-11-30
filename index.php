<!DOCTYPE html>
<html>
<head>
<LINK REL=StyleSheet HREF="css/estilo.css" TYPE="text/css" MEDIA=screen>
<title>Login</title>
</head>
<body>
  
<?php @session_start(); ?>
<div id="profile">  
    <?php if(isset($_SESSION['user_name'])){  
        ?>  
        <a href='logout.php' id='logout'>Logout</a>  
    <?php }else {?>  
    <a id="login_a" href="#"></a>  
       <?php } ?>  
</div>  

      <div class="login-page">
        <div class="err" id="add_err"></div>
            <form action="login.php" method="post">    
      <div class="form">   
        <form class="login-form">
          <input type="text" id="user_name" name="user_name"  placeholder="username"/>
          <input type="password" id="password" name="password" placeholder="password"/>
          <button id="login">ingresar</button>
        </form>
      </div>

      <div id="shadow" class="popup"></div>

    </div>
</body>
</html>