<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录界面</title>
     <link rel="stylesheet" href="./css/userlogin.css">
     <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div id="userlogin_div">
 <div class="form row">  
            <form class="form-horizontal col-sm-offset-3 col-md-offset-3" id="login_form" action="personal_center.php">  
               <div id="div1"> <h1 class="form-title" text-align="center">用户登陆</h1>  <hr />   </div>
               
                <div class="col-sm-9 col-md-9">  
                    <div class="form-group">                       
                        <input class="form-control required" type="text" placeholder="账号" name="user_nick" id="user_name" autofocus="autofocus" maxlength="20"/>  
                        <span class="fa fa-user fa-lg"></span>  
                    </div>  
                    <div class="form-group">  
                          <input class="form-control required" type="password" placeholder="密码" name="user_passwd" id="user_passwd" maxlength="8"/>  
                             <span class="fa fa-lock fa-lg"></span>  
                           
                    </div>  
                    <div class="form-group3">  
                             <input type="text"  class="input2" name="coder" id="coder" value=""placeholder="验证码" >
                    <img src="coder.php" alt="验证码" title="验证码" id="coderimg">
                    </div>
                    <br> 
                    <br>
                    <div class="form-group">   
                        <div class="remember-hint pull-left">
                <input type="checkbox" <?=$_COOKIE['user_nick'] && $_COOKIE['user_passwd'] ? 'checked':'';?> name="remember" id="remember" value="1"> 记住我
            </div>
                    </div>  
                    <div class="form-group">  
                        <button class="btn btn-default pull-right" type="button" id="userlogin_btn" value="Login "> 登陆 </button> 
                        <div class="form-group">  
                        <button class="btn btn-default pull-right" type="button" id="userregit_btn" value="Login "> 注册 </button> 
                     </div>  
                  </div>  
            </form>  
   </div>
 </div>
user_nick
<script src="./js/login.js"></script>
</body>
</html>