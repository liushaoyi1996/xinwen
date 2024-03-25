<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻管理系统</title>
    <script src="js/jquery.min.js"></script>
    <style>
        body{
            background:url("images/2038032.jpg");
        }
        li{
            list-style: none;
        }
        .w1{
            display: block;
            width: 100px;
            height: 50px;
            background:blue;
            color:white;
            text-align: center;
            line-height: 3em;
            text-decoration: none;
            float: left;
        }
        form{
            display: block;
            width: 400px;
            height: 220px;
            margin: 0 auto;
            margin-top: 100px;
            background:skyblue;
        }
        h3{
            display: block;
            margin: 0 auto;
            color: gray;
            margin-left: 140px;

        }
        .aa{
            margin-left: 60px;
        }
        .aa a{
            margin-left: 30px;
        }

    </style>
    <script>
        $(function(){
            $("#log").click(function(){
                $.ajax({
                    url:"http://localhost:8080/xw/log",
                    data:{name1:$("#name1").val(),psw:$("#psw").val()},
                    success:function(data){
                        if(data=="Y"){
                            alert("登陆成功");
                            window.location.href = "http://localhost:8080/xw/All";
                        }else if(data=="N"){
                            alert("登录失败");
                        }

                    },
                    dataType:"text"
                })
            });
        })
    </script>
</head>

<body>

<form action="###">
    <h3>新闻管理系统</h3>
    <ol>
        <li><span>账号:</span><input type="text" class="a1" placeholder="请输入账号" id="name1"></li>
        <li><span>密码:</span><input type="text" class="a1" placeholder="请输入密码" id="psw"></li>

    </ol>
    <div class="aa">
    <a href="###" id="log" class="w1">登录</a>
    <a href="page/zhuce.jsp" class="w1">注册</a>
    </div>
</form>
</body>
</html>