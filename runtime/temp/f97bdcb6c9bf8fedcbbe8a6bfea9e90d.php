<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:61:"C:\xampp\htdocs\public/../app/admin\view\auth\group_edit.html";i:1524305834;s:67:"C:\xampp\htdocs\public/../app/admin\view\layout\edit_btn_group.html";i:1524305834;}*/ ?>
<form action="<?php echo url(); ?>" method="post" class="form_single">
    <div class="box">
      <div class="box-body">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>名称</label>
              <span>（权限分组名称）</span>
              <input class="form-control" name="name" placeholder="请输入权限组名称" value="<?php echo (isset($info['name']) && ($info['name'] !== '')?$info['name']:''); ?>" type="text">
            </div>
          </div>
            
          <div class="col-md-6">
            <div class="form-group">
                <label>描述</label>
                <span>（权限分组描述）</span>
                <textarea class="form-control" name="describe" rows="3" placeholder="请输入权限组描述"><?php echo (isset($info['describe']) && ($info['describe'] !== '')?$info['describe']:''); ?></textarea>
            </div>
          </div>
          </div>
        </div>
        
        <div class="box-footer">

            <input type="hidden" name="id" value="<?php echo (isset($info['id']) && ($info['id'] !== '')?$info['id']:'0'); ?>"/>

            <button  type="submit" class="btn ladda-button ajax-post" data-style="slide-up" target-form="form_single">
    <span class="ladda-label">确 定</span>
</button>

<a class="btn" onclick="javascript:history.back(-1);return false;"> 返 回</a>
        
        </div>
        
      </div>
</form>