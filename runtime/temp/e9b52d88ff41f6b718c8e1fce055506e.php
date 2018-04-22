<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:58:"C:\xampp\htdocs\public/../app/admin\view\api\api_list.html";i:1524305834;}*/ ?>
<div class="box">
  <div class="box-header">
        <ob_link><a class="btn" href="<?php echo url('apiAdd'); ?>"><i class="fa fa-plus"></i> 新 增</a></ob_link>
        <a class="btn" href="/api.php" target="_blank"><i class="fa fa-book"></i> 接口文档</a>
        <br/>
  </div>
  <div class="box-body table-responsive">
    <table  class="table table-bordered table-hover">
      <thead>
            <tr>
                <th>名称</th>
                <th>分组</th>
                <th>类型</th>
                <th>地址</th>
                <th>状态</th>
                <th>研发者</th>
                <th>排序</th>
                <th>操作</th>
            </tr>
      </thead>
      
      <?php if(!(empty($list) || (($list instanceof \think\Collection || $list instanceof \think\Paginator ) && $list->isEmpty()))): ?>
        <tbody>
            <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <tr>
                  <td><?php echo $vo['name']; ?></td>
                  <td><?php echo $vo['group_name']; ?></td>
                  <td><?php echo $vo['request_type_text']; ?></td>
                  <td><?php echo $vo['api_url']; ?></td>
                  <td><?php echo $vo['api_status_text']; ?></td>
                  <td><?php echo $vo['developer_text']; ?></td>
                  <td><?php echo $vo['sort']; ?></td>
                  <td class="col-md-2 text-center">
                      <ob_link><a href="<?php echo url('apiEdit', array('id' => $vo['id'])); ?>" class="btn"><i class="fa fa-edit"></i> 编 辑</a></ob_link>
                      <ob_link><a class="btn confirm ajax-get"  href="<?php echo url('apiDel', array('id' => $vo['id'])); ?>"><i class="fa fa-trash-o"></i> 删 除</a></ob_link>
                  </td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
        <?php else: ?>
        <tbody><tr class="odd"><td colspan="8" class="text-center" valign="top"><?php echo config('empty_list_describe'); ?></td></tr></tbody>
      <?php endif; ?>
    </table>
  </div>
  <div class="box-footer clearfix text-center">
      <?php echo $list->render(); ?>
  </div>
</div>