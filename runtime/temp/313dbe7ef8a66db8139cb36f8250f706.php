<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:55:"C:\xampp\htdocs\app/index/view/default/index\login.html";i:1524311389;s:50:"C:\xampp\htdocs\app/index/view/default/layout.html";i:1524305834;s:54:"C:\xampp\htdocs\app/index/view/default/layout\top.html";i:1524311457;s:57:"C:\xampp\htdocs\app/index/view/default/layout\header.html";i:1524311540;s:34:"../app/common/view/fakeloader.html";i:1524305834;s:57:"C:\xampp\htdocs\app/index/view/default/layout\footer.html";i:1524305834;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Access-Control-Allow-Origin" content="https://demo.onebase.org" />
    <?php echo parse_string_val($seo_info, get_defined_vars()) ?>
    <link href="__STATIC__/ext/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="__STATIC__/ext/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="__STATIC__/ext/bootstrap/css/docs.css" rel="stylesheet">
    <link href="__STATIC__/ext/bootstrap/css/onebase.css" rel="stylesheet">
    <link href="__STATIC__/ext/toastr/toastr.min.css" rel="stylesheet">
    <script type="text/javascript" src="__STATIC__/js/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="__STATIC__/js/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="__STATIC__/ext/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="__STATIC__/js/common.js"></script>
    <script src="__STATIC__/ext/toastr/toastr.min.js"></script>
    <script src="__STATIC__/js/js.cookie.js"></script>
</head>
<body>
<div class="fakeloader"></div>
<link href="__STATIC__/ext/fakeloader/css/fakeLoader.css" rel="stylesheet">
<script src="__STATIC__/ext/fakeloader/js/fakeLoader.min.js"></script>
<script type="text/javascript">
    
    $(".fakeloader").fakeLoader({
        timeToHide:99999,
        bgColor:"rgba(52, 52, 52, .0)",
        spinner:"spinner<?php echo $loading_icon; ?>"
    });
    
    $('.fakeloader').hide();
    
    var pjax_mode = "<?php echo $pjax_mode; ?>";
    
</script>

<script type="text/javascript">
    var api_domain      = "<?php echo $api_domain; ?>";
    var access_token    = "<?php echo $access_token; ?>";
</script>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand" href="/">OneBase</a>
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="nav-collapse collapse">
                <ul class="nav">
                        <li>
                            <a href="/">首页</a>
                        </li>
  
                </ul>
            </div>
            <div class="nav-collapse collapse pull-right">
                <ul class="nav login_true" style="display: none;">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-left:0;padding-right:0"><span id="nickname_span"></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo url('changePassword'); ?>">修改密码</a></li>
                            <li><a href="javascript:;" onclick="logout()">退出</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="nav login_false">
                    <li>
                        <a href="<?php echo url('login'); ?>">登录 or 注册</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<header class="jumbotron subhead" id="overview">
    <div class="container">
        <h2>课程管理系统</h2>
        <p class="lead"></p>
    </div>
</header>


<div id="main-container" class="container">
    <section>
            <div class="span12">
                <div class="control-group">
                  <label class="control-label">用户名</label>
                  <div class="controls">
                      <input type="text" id="username" style="height: 30px;" class="span3" placeholder="请输入用户名" name="username">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">密码</label>
                  <div class="controls">
                    <input type="password" id="password" style="height: 30px;" class="span3" placeholder="请输入密码"  name="password">
                  </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <button type="button" class="btn" onclick="submitLogin(this)">登 陆</button>
                    </div>
                </div>
            </div>
    </section>

</div>


<script>
    
    var login_info = Cookies.get('login_info');
    
    if(!(typeof(login_info)=="undefined")) { window.location.href = '/';  }
    
    function submitLogin(btn)
    {
        
        $(btn).attr('disabled',"true");
        
        $.post(api_domain + '/api.php/common/login.html', {access_token:access_token, username:$('#username').val(),password:$('#password').val()}, success, "json");
        return false;
        
        function success(data)
        {
            
            if (data.code != 0) {  toast.error(data.msg); $(btn).removeAttr("disabled"); return; }
            
            Cookies.set('login_info', data.data);
            
            toast.success('登录成功');
            
            setTimeout(function(){ window.location.href = '/'; }, 500);
        }
    }
</script>
<footer class="footer">
  <div class="container">
      <p> 本站由 <strong><a href="http://www.onebase.org" target="_blank">OneBase</a></strong> 强力驱动</p>
  </div>
</footer>
<script type="text/javascript">
    $(function(){
        
        $(window).resize(function(){ $("#main-container").css("min-height", window.screen.height - 480); }).resize();
            
        var login_info = Cookies.get('login_info');
        
        // 登录成功
        if(!(typeof(login_info)=="undefined"))
        {
            var login_info = JSON.parse(login_info);
            
            $('#nickname_span').text(login_info.nickname);

            $('.login_true').show();
            $('.login_false').hide();
        }
    });
    
    function logout()
    {
        
        Cookies.remove('login_info');
         
        toast.success('注销成功');
        
        setTimeout(function(){ window.location.href = '/'; }, 500);
    }
</script>
</body>
</html>
