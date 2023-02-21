<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <title>${ boardadd }</title>
    <meta http-equiv="content-type" content="text/html; charset=gb2312">
    <style type="text/css">
        body {
            font-family: "微软雅黑";
            background-color: #EDEDED;
        }

        h2 {
            text-align: center;
            font-size: 26px;
        }

        table {
            margin: 30px auto;
            text-align: center;
            border-collapse: collapse;
            width: 50%;
        }

        td, th {
            padding: 7px;
            font-size: 18px;
        }

        hr {
            margin-bottom: 20px;
            border: 1px solid #aaa;
        }

        input, select, textarea {
            width: 284px;
            height: 30px;
            background: #EDEDED;
            border: 1px solid #999;
            text-indent: 5px;
            font-size: 18px;
        }

        input[type='submit'] {
            width: 130px;
            height: 36px;
            cursor: pointer;
            border-radius: 5px 5px 5px 5px;
            background: #ddd;
        }

        input[type='button'] {
            width: 130px;
            height: 36px;
            cursor: pointer;
            border-radius: 5px 5px 5px 5px;
            background: #ddd;
        }

        select {
            text-indent: 0px;
        }

        textarea {
            height: 100px;
            font-size: 22px;
        }
    </style>
</head>
<body><!-- body-start  -->
<input value="打印" id="printId" type="button" onclick="printInfo();" />
<input type="button" class="btn"  value="返 回" onclick="javascript:history.go(-1);"/>

<div id="print-content" align="center" class="ewm" >
<c:forEach items="${ imageAdressList }" var="imgAddress" varStatus="vs">
    <br><img src="${pageContext.request.contextPath}/static/img/${imgAddress}.jpg" width="10%" height="10%"/></br>
</c:forEach>
</div>
<script  src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js">//引入jquery框架
</script>
</body><!-- body-end  -->


<script type="text/javascript">
    $(function(){
    })
    function printInfo(){
        bindData()
        document.getElementById('printId').style.display='none'
        // alert(document.getElementsByName('boardRemarks')[0].value)
        var printHtml = document.querySelector('#print-content').innerHTML; // 需要打印的内容
        window.document.body.innerHTML = printHtml;
        window.print();
        window.location.reload();
    }
    function bindData() {
        console.log("jquery+"+document.getElementById('printId').value
        );
        //搞定 type=text, 同时如果checkbox,radio,select>option的值有变化, 也绑定一下, 这里忽略button
        $("input,select option").each(function () {
            $(this).attr('value', $(this).val());
        });
    }

</script>

</html>



