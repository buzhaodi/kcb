<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:47:"C:\xampp\htdocs\addon\file\view\index\file.html";i:1524305834;}*/ ?>
<link rel="stylesheet" href="__STATIC__/Huploadify.css">

<div id="upload_file_<?php echo $addons_data['name']; ?>"></div>

<input type="hidden" name="<?php echo $addons_data['name']; ?>" id="<?php echo $addons_data['name']; ?>" value="<?php echo $addons_data['value']; ?>"/>

<div class="upload-img-box<?php echo $addons_data['name']; ?>">
    <?php if(!(empty($info[$addons_data['name']]) || (($info[$addons_data['name']] instanceof \think\Collection || $info[$addons_data['name']] instanceof \think\Paginator ) && $info[$addons_data['name']]->isEmpty()))): ?>
    <div class="upload-pre-file">
        <div style="cursor:pointer;" class="file_del"  onclick="fileDel<?php echo $addons_data['name']; ?>(this)" ><img src="__STATIC__/uploadify-cancel.png" /></div> 
        <span class="upload_icon_all"></span><a target="_blank" href="<?php echo get_file_url((isset($info[$addons_data['name']]) && ($info[$addons_data['name']] !== '')?$info[$addons_data['name']]:'')); ?>"><?php echo get_file_url((isset($info[$addons_data['name']]) && ($info[$addons_data['name']] !== '')?$info[$addons_data['name']]:'')); ?></a></div>
    <?php endif; ?>
</div>

<script type="text/javascript">

    $("#upload_file_<?php echo $addons_data['name']; ?>").Huploadify({
        auto: true,
        height: 30,
        fileObjName: "file",
        buttonText: "上传文件",
        uploader: "<?php echo url('File/fileUpload',array('session_id'=>session_id())); ?>",
        width: 120,
        removeTimeout: 1,
        fileSizeLimit:"<?php echo $addons_config['max_size']; ?>",
        fileTypeExts: "<?php echo $addons_config['allow_postfix']; ?>",
        onUploadComplete: uploadFile<?php echo $addons_data['name']; ?>
    });
    
    function uploadFile<?php echo $addons_data['name']; ?>(file, data){
        
        var data = $.parseJSON(data);
        
        $("#<?php echo $addons_data['name']; ?>").val(data.id);
        
        var src = '/upload/file/' + data.path;
        
        $(".upload-img-box<?php echo $addons_data['name']; ?>").html('<div class="upload-pre-file">    <div style="cursor:pointer;" class="file_del"  onclick="fileDel<?php echo $addons_data['name']; ?>(this)" ><img src="__STATIC__/uploadify-cancel.png" /></div>      <span class="upload_icon_all"></span><a target="_blank" href="'+src+'"> ' + src + ' <a></div>');
    }
    
    function fileDel<?php echo $addons_data['name']; ?>(obj)
    {
        
        var addons_name = "<?php echo $addons_data['name']; ?>";
        
        $("#" + addons_name).val(0);
        
        $(obj).parent().remove();
    }
</script>