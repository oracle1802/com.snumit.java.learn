<%--<html>--%>
<%--<head>--%>
  <%--<!--&lt;!&ndash; jQuery (necessary for Bootstrap's JavaScript plugins) &ndash;&gt;-->--%>
  <%--<!--<script src="/framework/jQuery/jquery-3.2.1.js"></script>-->--%>
  <%--<!--<meta name="_csrf" content="${_csrf.token}"/>-->--%>
  <%--<!--&lt;!&ndash; default header name is X-CSRF-TOKEN &ndash;&gt;-->--%>
  <%--<!--<meta name="_csrf_header" content="${_csrf.headerName}"/>-->--%>


  <%--<!--<script type="text/javascript">-->--%>
  <%--<!--var token = $("meta[name='_csrf']").attr("content");-->--%>
  <%--<!--var header = $("meta[name='_csrf_header']").attr("content");-->--%>
  <%--<!--$(document).ajaxSend(function(e, xhr, options) {-->--%>
  <%--<!--xhr.setRequestHeader(header, token);-->--%>
  <%--<!--console.log("Triggered ajaxSend handler" );-->--%>
  <%--<!--});-->--%>
  <%--<!--</script>-->--%>
  <%--<sec:csrfMetaTags />--%>
<%--</head>--%>
<%--<body>--%>
<button onclick="doPost()">press me</button>

<script type="text/javascript">
    var data = {
        color : "Blue",
        miles : "200",
        vin: "1234"
    };

    function doPost() {

//      $.ajax({
//          url: '/cars/carp',
//          type: 'POST',
//          success: function (result) {
//              console.log(result)
//
//          },
//          error: function () {
//              console.log('/cars/carp', arguments)
//          }})


        $.ajax({
            url: '/cars/carp',
            type: 'POST',
            data: JSON.stringify(data),
            processData: false,
            contentType: "application/json",
            dataType: 'json',
            cache:false,
            complete: doCallback(),
            error: function () {
                console.log('/cars/carp', arguments)
            },
            success: function (result) {
                console.log(result)
            }
        });

//      $.ajax({
//          url: '/cars/carp',
//          type: 'post',
//          data: JSON.stringify(data),
//          processData: false,
//          contentType: 'application/x-www-form-urlencoded; charset=utf-8',
//          headers: {
//              'Accept': 'application/json',
//              'Content-Type': 'application/x-www-form-urlencoded'
//          } ,
//          dataType: 'json',
//          cache: false,
//          complete: doCallback(),
//          error:doCallback(),
//          sucess: doSuccess()
//      });

//      $.post("/cars/carp",
//          {
//              color : "Blue",
//              miles : "200",
//              vin: "1234"
//          },
//          function(data, status){
//              alert("Data: " + data + "\nStatus: " + status);
//          });
        console.log('start')
    }

    function doCallback(jqXHR, textStatus) {
        console.log('complete')
        console.log(jqXHR)
        console.log(textStatus)
    }

    function doSuccess(data, textStatus,  jqXHR ) {
        console.log('success')
        console.log(data)
        console.log(textStatus)
        console.log(jqXHR)
    }
</script>

<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script type="text/javascript">
    var app = angular.module('postserviceApp', []);
    app.controller('postserviceCtrl', function ($scope, $http) {
        $scope.name = null;
        $scope.age = null;
        $scope.adress = null;
        $scope.lblMsg = null;
        $scope.postdata = function (name, age, adress) {
            var data = {
                color : "Blue",
                miles : "200",
                vin: "1234"
            };
//Call the services
            $http.post('/cars/carp', JSON.stringify(data)).then(function (response) {
                if (response.data)
                    $scope.msg = "Post Data Submitted Successfully!";

            }, function (response) {
                $scope.msg = "Service not Exists";
                $scope.statusval = response.status;
                $scope.statustext = response.statusText;
                $scope.headers = response.headers();
            });
        };
        console.log($scope.msg);
    });
</script>
<%--</body>--%>
<%--</html>--%>