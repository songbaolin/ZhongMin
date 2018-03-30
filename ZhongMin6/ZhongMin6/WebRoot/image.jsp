<%@ page language="java" contentType="text/html; charset=utf-8"  
    pageEncoding="utf-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>文件上传下载</title>
<script type="text/javascript">
function postImg(){
    if ($.trim($("#imgFile").val()) == "") {  
            alert("请选择图片！");  
            return;  
        }  
    console.log($("#imgFile")[0].files[0].size);//小于100*1024，下面的请求就可以成功
    var option = {
        url : '/uc/insertUserPhoto.action',
        type : 'POST',
//     dataType : 'json',
        headers : {"ClientCallMode" : "ajax"}, //添加请求头部
        success : function(XMLHttpRequest, textStatus, errorThrown){
            console.log(XMLHttpRequest);
            console.log(textStatus);
            console.log(errorThrown);
            console.log("前端输出上传成功");
            $("#imgClose").click();
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest);
            console.log(textStatus);
            console.log(errorThrown);
            console.log("前端输出上传失败"); 
        }
    };
    $("#imgForm").ajaxSubmit(option);
    return false; 

    
}
</script>  
</head>  
<body>  
    <form id="imgForm"  > 
　　<div class="modal-content">
    　　<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4 class="modal-title" id="myModalLabel">修改头像</h4>
       </div>
       <div class="modal-body">
       　　<input type="file" id="imgFile" name="imgFile"/> 
          <input id="imgId" name="userId" value="${user.id }" style="display:none" />
       </div>
       <div class="modal-footer">
       　　<button type="button" class="btn btn-default" data-dismiss="modal" id="imgClose">关闭</button>
           <button type="button" class="btn btn-primary" onclick="postImg();" id="imgSubmit">上传</button>
       </div>
   </div>
</form>
</body>  
</html>  