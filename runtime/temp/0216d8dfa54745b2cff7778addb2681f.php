<?php if (!defined('THINK_PATH')) exit(); /*a:10:{s:66:"C:\xampp\htdocs\public/../app/admin\view\article\article_list.html";i:1524323977;s:52:"C:\xampp\htdocs\public/../app/admin\view\layout.html";i:1524305834;s:56:"C:\xampp\htdocs\public/../app/admin\view\layout\top.html";i:1524305834;s:59:"C:\xampp\htdocs\public/../app/admin\view\layout\header.html";i:1524324146;s:34:"../app/common/view/fakeloader.html";i:1524305834;s:65:"C:\xampp\htdocs\public/../app/admin\view\layout\sidebar_left.html";i:1524305834;s:59:"C:\xampp\htdocs\public/../app/admin\view\layout\crumbs.html";i:1524305834;s:59:"C:\xampp\htdocs\public/../app/admin\view\layout\footer.html";i:1524324167;s:66:"C:\xampp\htdocs\public/../app/admin\view\layout\sidebar_right.html";i:1524305834;s:59:"C:\xampp\htdocs\public/../app/admin\view\layout\bottom.html";i:1524305834;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>OneBase <?php if(!(empty($ob_title) || (($ob_title instanceof \think\Collection || $ob_title instanceof \think\Paginator ) && $ob_title->isEmpty()))): ?> | <?php echo $ob_title; endif; ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="__STATIC__/ext/adminlte/bootstrap/css/bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="__STATIC__/ext/adminlte/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="__STATIC__/ext/adminlte/dist/css/skins/_all-skins.css">
    <link rel="stylesheet" href="__STATIC__/ext/toastr/toastr.min.css">
    <link rel="stylesheet" href="__STATIC__/ext/btnloading/dist/ladda-themeless.min.css">
    <link rel="stylesheet" href="__STATIC__/admin/css/onebase.css">
    <link rel="stylesheet" type="text/css" href="__STATIC__/ext/remodal/remodal.css" media="all">
    <link rel="stylesheet" type="text/css" href="__STATIC__/ext/remodal/remodal-default-theme.css" media="all">
    <!-- jQuery 2.2.3 -->
    <script src="__STATIC__/ext/adminlte/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Pjax -->
    <script src="__STATIC__/admin/js/jquery.pjax.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="__STATIC__/ext/adminlte/bootstrap/js/bootstrap.min.js"></script>
    <script src="__STATIC__/admin/js/init.js"></script>
    <link rel="stylesheet" href="__STATIC__/ext/adminlte/dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="__STATIC__/ext/adminlte/dist/css/ionicons.min.css">
    
    <!-- Pjax Depend -->
    <link rel="stylesheet" href="__STATIC__/ext/datetimepicker/css/datetimepicker.css" type="text/css">
    <link rel="stylesheet" href="__STATIC__/ext/datetimepicker/css/dropdown.css" type="text/css">
    <script type="text/javascript" src="__STATIC__/ext/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="__STATIC__/ext/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script charset="utf-8" src="__STATIC__/addon/editor/kindeditor/kindeditor-min.js"></script>
    <script charset="utf-8" src="__STATIC__/addon/editor/kindeditor/zh_CN.js"></script>
    <script src="__STATIC__/addon/file/jquery.Huploadify.js"></script>
    <script src="__STATIC__/ext/edittable/jquery.edittable.js"></script>
    <link rel="stylesheet" href="__STATIC__/ext/edittable/jquery.edittable.min.css">
    <script src="__STATIC__/admin/js/echarts.min.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
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
<script src="__STATIC__/admin/js/init_body.js"></script>
<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="<?php echo url('Index/index'); ?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>OB</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>毕业设计</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">导航开关</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
              
<!--            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>-->
              
            <ul class="dropdown-menu">
              <li class="header">您有4个消息</li>
              
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="__STATIC__/ext/adminlte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                         张三
                        <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
                      </h4>
                      <p>吃饭了吗？</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="__STATIC__/ext/adminlte/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        李四
                        <small><i class="fa fa-clock-o"></i> 2 小时前</small>
                      </h4>
                      <p>麻烦发下今天的文章哦。</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">查看所有消息</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
<!--            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>-->
            <ul class="dropdown-menu">
              <li class="header">您有10个通知</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 今天有5个新成员加入
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> 这是一条系统警告通知。
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 销售了25个产品喔
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> 用户名修改通知
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">查看所有通知</a></li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="__STATIC__/ext/adminlte/dist/img/user3-128x128.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php echo $member_info['nickname']; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="__STATIC__/ext/adminlte/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">

                <p>
                    <?php echo $member_info['nickname']; ?>
                  <small>上次登录时间：<?php echo $member_info['update_time']; ?></small>
                </p>
              </li>
              <!-- Menu Body -->
<!--              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">个人中心</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">修改头像</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">修改密码</a>
                  </div>
                </div>
                 /.row 
              </li>-->
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat clear_cache" url="<?php echo url('Login/clearCache'); ?>">清理缓存</a>
                </div>
                <div class="pull-right">
                  <a class="btn btn-default btn-flat logout" url="<?php echo url('Login/logout'); ?>">安全退出</a>
                </div>
              </li>
            </ul>
          </li>
          
          <!-- 控制栏切换按钮 -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- 左侧导航栏 -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="__STATIC__/ext/adminlte/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
            <p><?php echo $member_info['nickname']; ?></p>
            <?php echo $member_info['update_time']; ?>
          <!--<a href="#"><i class="fa fa-circle text-success"></i> 在线状态</a>-->
        </div>
      </div>
      
      
      <!-- search form -->
<!--      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="请输入搜索内容...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>-->
      <!-- /.search form -->
      
      <!-- 左侧菜单 -->
      <ul class="sidebar-menu">
        <?php echo $menu_view; ?>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        
        <section class="content-header">
          <h1>
            <?php if(!(empty($ob_title) || (($ob_title instanceof \think\Collection || $ob_title instanceof \think\Paginator ) && $ob_title->isEmpty()))): ?><?php echo $ob_title; endif; if(!(empty($ob_describe) || (($ob_describe instanceof \think\Collection || $ob_describe instanceof \think\Paginator ) && $ob_describe->isEmpty()))): ?><small><?php echo $ob_describe; ?></small><?php endif; ?>
          </h1>
          <?php echo $crumbs_view; ?>
        </section>
<div class="box">
  <div class="box-header">
    <ob_link><a class="btn" href="<?php echo url('articleAdd'); ?>"><i class="fa fa-plus"></i> 新 增</a></ob_link>
    
    <div class="box-tools">
        <div class="input-group input-group-sm search-form " >
            <select name="search_data_type" class="form-control" style="width: 30%;left: 10%;">
                <?php if(is_array($article_category_list) || $article_category_list instanceof \think\Collection || $article_category_list instanceof \think\Paginator): $i = 0; $__LIST__ = $article_category_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <option value="<?php echo $vo['id']; ?>" <?php if(input('search_data_type') == $vo['id']): ?>" selected="selected" <?php endif; ?> ><?php echo $vo['name']; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>
            <input name="search_data" class="pull-right search-input" value="<?php echo input('search_data'); ?>" placeholder="支持课程名称|描述|编码" type="text">
            <div class="input-group-btn">
              <button type="button" id="search" url="<?php echo url('articlelist'); ?>" class="btn btn-default"><i class="fa fa-search"></i></button>
            </div>
        </div>
    </div>
    <br/>
  </div>
  <div class="box-body table-responsive">
    <table  class="table table-bordered table-hover">
      <thead>
      <tr>
          <th>课程代码</th>
          <th>课程名称</th>
          <th>计划学时</th>
          <th>讲授</th>
          <th>实践</th>
          <th>开课学期</th>
          <th>考核方式</th>
          <th>描述</th>
          <th>分类</th>
          <th>封面</th>
          <th>发布会员</th>
          <th>发布时间</th>
          <th>操作</th>
      </tr>
      </thead>
      
      <?php if(!(empty($list) || (($list instanceof \think\Collection || $list instanceof \think\Paginator ) && $list->isEmpty()))): ?>
        <tbody>
            <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <tr>
                  <td><?php echo $vo['code']; ?></td>
                  <td><?php echo $vo['name']; ?></td>
                    <td><?php echo $vo['dopperiod'] + $vo['professorperiod']; ?></td>
                    <td><?php echo $vo['professorperiod']; ?></td>
                    <td><?php echo $vo['dopperiod']; ?></td>
                    <td><?php echo $vo['plan']; ?></td>
                    <td><?php echo !empty($vo['testway']) && $vo['testway']==1?'考试':'考察'; ?></td>
                  <td><?php echo $vo['describe']; ?></td>
                  <td><?php echo $vo['category_name']; ?></td>
                  <td>
                      <img class="admin-list-img-size" src="<?php echo get_picture_url($vo['cover_id']); ?>"/>
                  </td>
                  <td><?php echo $vo['nickname']; ?></td>
                  <td><?php echo $vo['create_time']; ?></td>
                  <td class="col-md-2 text-center">
                      <ob_link><a href="<?php echo url('articleEdit', array('id' => $vo['id'])); ?>" class="btn "><i class="fa fa-edit"></i> 编辑</a></ob_link>
                      <ob_link><a class="btn  confirm ajax-get"  href="<?php echo url('articleDel', array('id' => $vo['id'])); ?>"><i class="fa fa-trash-o"></i> 删除</a></ob_link>
                  </td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
        <?php else: ?>
        <tbody><tr class="odd"><td colspan="7" class="text-center" valign="top"><?php echo config('empty_list_describe'); ?></td></tr></tbody>
      <?php endif; ?>
    </table>
  </div>
  <div class="box-footer clearfix text-center">
      <?php echo $list->render(); ?>
  </div>
</div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>版本号</b> 1.0.0
    </div>
    <strong>
        版权©2018 - 2018 毕业设计 .
    </strong>
      保留所有权利。
  </footer>
  
  <script src="__STATIC__/admin/js/pjax_init.js"></script>
  
  <!-- 控制栏 -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
<!--    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-bell-o"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>-->
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
<!--        <h3 class="control-sidebar-heading">通知开关</h3>
        
          <div class="form-group">
            <label class="control-sidebar-subheading">
              异常登录是否通知
              <input type="checkbox" class="pull-right" checked>
            </label>
            <p>
              不在常用地区或常用IP登录是否通知用户，默认为是。
            </p>
          </div>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              行为异常是否限制
              <input type="checkbox" class="pull-right" checked>
            </label>
            <p>
              用户行为异常是否限制其操作，默认为是。
            </p>
          </div>-->
        
      </div>
      
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
<!--        <form method="post">
          <h3 class="control-sidebar-heading">系统开关</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              是否允许注册
              <input type="checkbox" class="pull-right" checked>
            </label>
            <p>
              若勾选后则不允许用户注册，默认为是。
            </p>
          </div>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              是否调试模式
              <input type="checkbox" class="pull-right" checked>
            </label>
            <p>
              若为调试模式页面将显示Trace信息，默认为是。
            </p>
          </div>
        </form>-->
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<script src="__STATIC__/ext/adminlte/dist/js/app.min.js"></script>
<script src="__STATIC__/ext/adminlte/dist/js/init.js"></script>
<script src="__STATIC__/ext/toastr/toastr.min.js"></script>
<script src="__STATIC__/ext/btnloading/dist/spin.min.js"></script>
<script src="__STATIC__/ext/btnloading/dist/ladda.min.js"></script>
<script src="__STATIC__/ext/remodal/remodal.min.js"></script>
<script src="__STATIC__/admin/js/onebase.js"></script>
<link rel="stylesheet" href="__STATIC__/admin/css/ob_skin.css">
</body>
</html>