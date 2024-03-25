<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻管理系统</title>
    <script src="http://localhost:8080/js/jquery.min.js"></script>
    <style>
        body{
            background:url("http://localhost:8080/images/2015004.jpg");
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
            line-height: 2.5em;
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
                    url:"http://localhost:8080/xw/zhuce",
                    data:{name1:$("#name1").val(),psw:$("#psw").val(),psw2:$("#psw2").val()},
                    success:function(data){
                        if(data=="Y"){
                            alert("注册成功，自动登录");
                            window.location.href = "http://localhost:8080/page/index.jsp";
                        }else if(data=="N"){
                            alert("注册失败,用户名重复！");
                        }else if(data=="NN"){
                            alert("注册失败，请检查输入信息是否合法！");
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
        <li><span>请输入账号:</span><input type="text" class="a1" placeholder="请输入账号" id="name1"></li>
        <li><span>请输入密码:</span><input type="text" class="a1" placeholder="请输入密码" id="psw"></li>
        <li><span>请确认密码:</span><input type="text" class="a1" placeholder="请输入密码" id="psw2"></li>
    </ol>
    <div class="aa">
    <a href="http://localhost:8080/index.jsp" class="w1">登录</a>
    <a href="###" class="w1" id="log">注册</a>
    </div>
</form>
</body>
</html>