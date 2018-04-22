<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:50:"C:\xampp\htdocs\addon\editor\view\index\index.html";i:1524305834;}*/ ?>
<link rel="stylesheet" href="__STATIC__/kindeditor/default/default.css" />
<script type="text/javascript">

    $(function(){
        
    var editor_<?php echo $addons_data['name']; ?>;
        editor_<?php echo $addons_data['name']; ?> = KindEditor.create('textarea[name="<?php echo $addons_data['name']; ?>"]', {
                allowFileManager : false,
                themesPath: KindEditor.basePath,
                width: '100%',
                height: '<?php echo $addons_config['editor_height']; ?>',
                resizeType: <?php if($addons_config['editor_resize_type'] == '1'): ?>1 <?php else: ?> 0 <?php endif; ?>,
                pasteType : 2,
                urlType : 'absolute',
                fileManagerJson : '<?php echo url('fileManagerJson'); ?>',
                uploadJson : '<?php echo addons_url("editor://Upload/pictureUpload"); ?>',
                items : [
                'source', 'undo', 'redo', 'cut', 'copy','paste', 'plainpaste', 'wordpaste','selectall',
                'justifyleft','justifycenter','justifyright','justifyfull','insertorderedlist','indent',
                'outdent','subscript','superscript','fontname','fontsize','forecolor','hilitecolor','bold',
                'italic','underline','strikethrough','removeformat','image','table',
                'link','unlink','fullscreen'
                ],
                extraFileUploadParams: { session_id : '<?php echo session_id(); ?>'}
            });
        
        //ajax提交之前同步
        $('button[type="submit"],#submit,.ajax-post,#autoSave').click(function(){
                editor_<?php echo $addons_data['name']; ?>.sync();
        });
    });
</script>
