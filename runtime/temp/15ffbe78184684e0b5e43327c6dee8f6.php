<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:47:"C:\xampp\htdocs\addon\file\view\index\imgs.html";i:1524305834;}*/ ?>
<link rel="stylesheet" href="__STATIC__/Huploadify.css">

<div id="upload_pictures_<?php echo $addons_data['name']; ?>"></div>

<input type="hidden" name="<?php echo $addons_data['name']; ?>" id="<?php echo $addons_data['name']; ?>" value="<?php echo $addons_data['value']; ?>"/>

<div class="upload-img-box<?php echo $addons_data['name']; ?>">
    <?php if(!(empty($info[$addons_data['name']]) || (($info[$addons_data['name']] instanceof \think\Collection || $info[$addons_data['name']] instanceof \think\Paginator ) && $info[$addons_data['name']]->isEmpty()))): $img_ids_list = $info[$addons_data['name'] . '_array']; if(is_array($img_ids_list) || $img_ids_list instanceof \think\Collection || $img_ids_list instanceof \think\Paginator): $i = 0; $__LIST__ = $img_ids_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <div class="upload-pre-item" style="float:left; margin: 10px;">
                <div style="cursor:pointer;" class="pic_del"  onclick="picDel<?php echo $addons_data['name']; ?>(this, <?php echo $vo; ?>)" ><img src="__STATIC__/uploadify-cancel.png" /></div> 
                <a target="_blank" href="<?php echo get_picture_url((isset($vo) && ($vo !== '')?$vo:'0')); ?>">
                    <img style="max-width: <?php echo $addons_config['maxwidth']; ?>;" src="<?php echo get_picture_url((isset($vo) && ($vo !== '')?$vo:'0')); ?>"/>
                </a>
            </div>
        <?php endforeach; endif; else: echo "" ;endif; endif; ?>
</div>

<script type="text/javascript">
    
    var maxwidth = "<?php echo $addons_config['maxwidth']; ?>";
    
    $("#upload_pictures_<?php echo $addons_data['name']; ?>").Huploadify({
        auto: true,
        height          : 30,
        fileObjName     : "file",
        buttonText      : "上传图片",
        uploader        : "<?php echo url('File/pictureUpload',array('session_id'=>session_id())); ?>",
        width         : 120,
        removeTimeout	  : 1,
        fileSizeLimit:"<?php echo $addons_config['max_size']; ?>",
        fileTypeExts	  : "<?php echo $addons_config['allow_postfix']; ?>",
        onUploadComplete : uploadPicture<?php echo $addons_data['name']; ?>
    });
    
    function uploadPicture<?php echo $addons_data['name']; ?>(file, data){
        
        var data = $.parseJSON(data);
        
        var addons_name = "<?php echo $addons_data['name']; ?>";
        
        var img_ids = $("#" + addons_name).val();
        
        var add_id = data.id;
        
        if(img_ids){ var lastChar = img_ids.charAt(img_ids.length - 1);  if(lastChar != ','){  add_id = img_ids + ',' + add_id; } }
        
        $("#" + addons_name).val(add_id);
        
        var src = '/upload/picture/' + data.path;
        
        $(".upload-img-box" + addons_name).append('<div class="upload-pre-item" style="float:left; margin: 10px;"> <div style="cursor:pointer; " class="pic_del"  onclick="picDel<?php echo $addons_data['name']; ?>(this,'+data.id+')" ><img src="__STATIC__/uploadify-cancel.png" /></div> <a target="_blank" href="' + src + '"> <img style="max-width: ' + maxwidth + ';" src="' + src + '"/></a></div>');
    }
    
    function picDel<?php echo $addons_data['name']; ?>(obj, pic_id)
    {
        
        var addons_name = "<?php echo $addons_data['name']; ?>";
        
        var img_ids = $("#" + addons_name).val();
        
        
        if(img_ids.indexOf(",") > 0)
        {
            
            img_ids.indexOf(pic_id) == 0 ? img_ids = img_ids.replace(pic_id + ',', '') : img_ids = img_ids.replace(',' + pic_id, '');
            
            $("#" + addons_name).val(img_ids);
        }else{
            
            $("#" + addons_name).val('');
        }
        
        $(obj).parent().remove();
    }
</script>