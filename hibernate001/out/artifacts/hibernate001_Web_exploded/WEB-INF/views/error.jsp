<%@include file="includes/include_head.jsp"%>
<html>
<head>
    <title>Error</title>
    <style type="text/css">
        html, body
        {
            height: 100%;
            margin:0;
            padding:0;
        }

        div {
            position:relative;
            height: 100%;
            width:100%;
        }

        div img {
            position:absolute;
            top:0;
            left:0;
            right:0;
            bottom:0;
            margin:auto;
        }
    </style>
    <%@include file="includes/include_global_css.jsp"%>
</head>
<body>
    <%@include file="includes/page_header.jsp"%>
    <div> <img src="/img/issue_message.png"/></div>
    <%@include file="includes/page_footer.jsp"%>
</body>
</html>
