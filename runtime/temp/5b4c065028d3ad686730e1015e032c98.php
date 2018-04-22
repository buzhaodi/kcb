<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:55:"C:\xampp\htdocs\app/index/view/default/index\index.html";i:1524311436;s:50:"C:\xampp\htdocs\app/index/view/default/layout.html";i:1524305834;s:54:"C:\xampp\htdocs\app/index/view/default/layout\top.html";i:1524311457;s:57:"C:\xampp\htdocs\app/index/view/default/layout\header.html";i:1524311540;s:34:"../app/common/view/fakeloader.html";i:1524305834;s:65:"C:\xampp\htdocs\app/index/view/default/index\tmpl\index_tmpl.html";i:1524305834;s:57:"C:\xampp\htdocs\app/index/view/default/layout\footer.html";i:1524305834;}*/ ?>
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
    <div class="row">
        
        <div class="span3 bs-docs-sidebar">
            <ul class="nav nav-list bs-docs-sidenav" id="article_category_ul"></ul>
        </div>

        <div class="span9">
            <section id="article_ul"></section>
            <div id='page_div'></div>
        </div>
        
    </div>
</div>

<div class="tmpl_div"  style="display: none;">

    <!--首页文章分类模板-->
    <div id='article_category_ul_tmpl'>
        <li class="article_category_li_${id}"><a href="/?cid=${id}"><i class='icon-chevron-right'></i>${name}</a></li> 
    </div>
    
    <!--首页文章列表模板-->
    <div id='article_ul_tmpl'>
        <div class="">
            <h3><a href="?act=details&id=${id}">${name}</a></h3>
        </div>
        <div>
            <p class="lead">${describe}</p>
        </div>
        <div>
            <span><a href="?act=details&id=${id}">查看全文</a></span>
            <span class="pull-right">
            <span>发布时间：${create_time}</span>
            </span>
        </div>
        <hr/>
    </div>

</div>

<script type="text/javascript">

    function getPageHtml(data)
    {
        
        $.post("<?php echo url('common/page'); ?>", {current_page:data.current_page,last_page:data.last_page}, success, "json");
        return false;
        
        function success(data)
        {
            $('#page_div').html(data.content);
        }
    }

    $(function(){
        
        $('.fakeloader').show();
        
        $.template("article_category_ul_tmpl", $('#article_category_ul_tmpl'));
        $.template("article_ul_tmpl", $('#article_ul_tmpl') );
        
        var page = getUrlParam('page');
        
        if (null == page) { page = 1;}
        
        var cid = "<?php echo $cid; ?>";
        
        $.post(api_domain + '/api.php/combination/index.html', {access_token:access_token,list_rows:5, page:page, category_id:cid}, success, "json");
        return false;
        
        function success(data)
        {
            
            $.tmpl("article_category_ul_tmpl", data.data.article_category_list).appendTo("#article_category_ul");
            $.tmpl("article_ul_tmpl", data.data.article_list.data).appendTo("#article_ul");
            
            getPageHtml(data.data.article_list);
            
            $('.article_category_li_' + "<?php echo $cid; ?>").addClass('active');
            
            $('.fakeloader').hide();
        }
        
    });
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
