<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/10/26
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="renderer" content="webkit">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
  <title>爱的小屋</title>
  <link rel="stylesheet" type="text/css" href="css/index.css">
</head>

<body>
<div class="content">
  <h2>蓉蓉，我们已经在一起了</h2>
  <div class="timer">
    <b id="d"></b> Days <b id="h"></b> Hours <b id="m"></b> Minutes <b id="s"></b> Seconds
  </div>
</div>

<script>
    function timer() {
        var start = new Date(2018, 05, 20); // 2015.7.2
        var t = new Date() - start;
        var h = ~~(t / 1000 / 60 / 60 % 24);
        if (h < 10) {
            h = "0" + h;
        }
        var m = ~~(t / 1000 / 60 % 60);
        if (m < 10) {
            m = "0" + m;
        }

        var s = ~~(t / 1000 % 60);
        if (s < 10) {
            s = "0" + s;
        }
        document.getElementById('d').innerHTML = ~~(t / 1000 / 60 / 60 / 24);
        document.getElementById('h').innerHTML = h;
        document.getElementById('m').innerHTML = m;
        document.getElementById('s').innerHTML = s;
    }
    timer();
    setInterval(timer, 1000);
</script>
</body>

</html>
