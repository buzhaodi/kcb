<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:61:"C:\xampp\htdocs\public/../app/install\view\install\step1.html";i:1524305834;s:59:"C:\xampp\htdocs\public/../app/install\view\public\base.html";i:1524305834;}*/ ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>OneBase 安装</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Le styles -->
        <link href="/static/install/css/bootstrap.min.css" rel="stylesheet">
        <link href="/static/install/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link href="/static/install/css/install.css" rel="stylesheet">
        <!-- .. -->
        <script src="/static/install/js/jquery-1.10.2.min.js"></script>
        <script src="/static/install/js/bootstrap.min.js"></script>
    </head>

    <body data-spy="scroll" data-target=".bs-docs-sidebar">
        
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand" target="_blank" href="https://onebase.org">OneBase</a>
                    <div class="nav-collapse collapse">
                    	<ul id="step" class="nav">
                            
    <li><a>安装协议</a></li>
    <li class="active"><a>环境检测</a></li>
    <li><a>创建数据库</a></li>
    <li><a>安装</a></li>
    <li><a>完成</a></li>

                    	</ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="jumbotron masthead">
            <div class="container">
                
    <table class="table">
        <caption><h2>运行环境</h2></caption>
        <thead>
            <tr>
                <th>项目</th>
                <th>所需配置</th>
                <th>当前配置</th>
            </tr>
        </thead>
        <tbody>
            <?php if(is_array($env) || $env instanceof \think\Collection || $env instanceof \think\Paginator): $i = 0; $__LIST__ = $env;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                <tr>
                    <td><?php echo $item[0]; ?></td>
                    <td><?php echo $item[1]; ?></td>
                    <td><i class="ico-<?php echo $item[4]; ?>">&nbsp;</i><?php echo $item[3]; ?></td>       
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
    <table class="table">
        <caption><h2>依赖性</h2></caption>
        <thead>
            <tr>
                <th>名称</th>
		<th>类型</th>
                <th>检查结果</th>
            </tr>
        </thead>
         <tbody>
            <?php if(is_array($func) || $func instanceof \think\Collection || $func instanceof \think\Paginator): $i = 0; $__LIST__ = $func;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                <tr>
                    <td><?php echo $item[0]; ?></td>
					<td><?php echo $item[3]; ?></td>
                    <td><i class="ico-<?php echo $item[2]; ?>">&nbsp;</i><?php echo $item[1]; ?></td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
    <present name="dirfile">
        <table class="table">
            <caption><h2>目录/文件权限</h2></caption>
            <thead>
                <tr>
                    <th>目录/文件</th>
                    <th>所需状态</th>
                    <th>当前状态</th>
                </tr>
            </thead>
            <tbody>
                <?php if(is_array($dirfile) || $dirfile instanceof \think\Collection || $dirfile instanceof \think\Paginator): $i = 0; $__LIST__ = $dirfile;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                    <tr>
                        <td><?php echo $item[3]; ?></td>
                        <td><i class="ico-success">&nbsp;</i>可写</td>
                        <td><i class="ico-<?php echo $item[2]; ?>">&nbsp;</i><?php echo $item[1]; ?></td>   
                    </tr>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </tbody>
        </table>
    </present>


            </div>
        </div>

        <footer class="footer navbar-fixed-bottom">
            <div class="container">
                <div style="">
                    
    <a class="btn btn-success btn-large" href="<?php echo url('Index/index'); ?>">上一步</a>
    <a class="btn btn-primary btn-large" href="<?php echo url('Install/step2'); ?>">下一步</a>

                </div>
            </div>
        </footer>
    </body>
</html>
