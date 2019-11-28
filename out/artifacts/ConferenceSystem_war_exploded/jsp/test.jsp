<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>该二维码支持中文和LOGO</title>

     <script type="text/javascript" src="../static/js/jquery-1.8.0.js"></script>
     <script type="text/javascript" src="../static/js/utf.js"></script>
     <script type="text/javascript" src="../static/js/jquery.qrcode.js"></script>
     <script type="text/javascript">
         $(document).ready(function() {
                $("#qrcodeCanvas").qrcode({
                        render : "canvas",    //设置渲染方式，有table和canvas，使用canvas方式渲染性能相对来说比较好text : "这是修改了官文的js文件，此时生成的二维码支持中文和LOGO",    //扫描二维码后显示的内容,可以直接填一个网址，扫描二维码后自动跳向该链接
                        width : "200",               //二维码的宽度
                       height : "200",              //二维码的高度
                         background : "#ffffff",       //二维码的后景色
                        foreground : "#000000",        //二维码的前景色
                        src: 'photo.jpg'             //二维码中间的图片
                });
         });
     </script>

     </head>
 <body>
    <center>
          <h2>该二维码支持中文和LOGO</h2>
           <div id="qrcodeCanvas"></div>
         </center>
 </body>
 </html>