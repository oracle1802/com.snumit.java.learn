<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
  <div class="row">
    <div class="col-0 col-sm-1  col-md-2 col-lg-3 col-xl-4"></div>
    <div class="col-12 col-sm-10  col-md-8 col-lg-6 col-xl-4">
      <br>
      <h2>Login with email:</h2>
      <div class="col-0 col-sm-1  col-md-2 col-lg-3 col-xl-4"></div>
    </div>
  </div>

  <div class="row">
    <div class="col-0 col-sm-1  col-md-2 col-lg-3 col-xl-4"></div>
    <div class="col-12 col-sm-10  col-md-8 col-lg-6 col-xl-4 text-right">
      <form name='loginForm' action="<c:url value='/login' />" method='POST'>

        <div id = "loginUserNameFormGroup" class="form-group">
          <%--<label for="loginUserName">User:</label>--%>
          <div class="input-group">
            <span class="input-group-addon">@</span>
            <input type='text' name='username' value='' class="form-control" id="loginUserName" placeholder="support@snumit.com" autofocus onkeyup="validateUserNameHelperWarning()" onblur="validateUserNameOnBlur()"/>
          </div>
        </div>
        <div class="has-warning">
          <div id="loginUserNameValidationWarning" class="help-block"></div>
        </div>

        <div class="form-group">
          <%--<label for="loginUserPassword">Password:</label>--%>
          <input type='password' name='password' class="form-control" id="loginUserPassword" placeholder="Password"/>
        </div>

        <div class="has-error">
          <c:if test="${not empty error}">
            <div class="help-block">${error}</div>
          </c:if>
          <c:if test="${not empty msg}">
            <div class="help-block">${msg}</div>
          </c:if>
        </div>

        <input name="submit" type="submit" value="LOG IN" class="btn btn-default" />

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

      </form>

    </div>
    <div class="col-0 col-sm-1  col-md-2 col-lg-3 col-xl-4"></div>
  </div>
  <div class="row">
    <div class="col-0 col-sm-1  col-md-2 col-lg-3 col-xl-4"></div>
    <div class="col-12 col-sm-10  col-md-8 col-lg-6 col-xl-4 text-right">
      <br>
      <a href="#" >Forgot you password?</a>
      <br>
      <a href="#" class="text-right">Sign up now</a>
    </div>
    <div class="col-0 col-sm-1  col-md-2 col-lg-3 col-xl-4"></div>
  </div>
</div>

<script>
  /*проверка валидности эл. почты*/
  function validateEmail(email) {
      var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      return re.test(email);
  }
  /*подсказка в ходе ввода*/
  function validateUserNameHelperWarning() {
      $("#loginUserName").text("");
      var email = $("#loginUserName").val();
      if (validateEmail(email)) {
          $('#loginUserNameFormGroup').removeClass(' has-error ')

          $("#loginUserNameValidationWarning").text("");
      } else {
          $("#loginUserNameValidationWarning").text("Username must be a valid email address");
          $("#loginUserNameValidationWarning").css("color", "red");
      }
      return false;
  }
  /*подсветка при потере фокуса ввода*/
  function validateUserNameOnBlur() {
      $("#loginUserName").text("");
      var email = $("#loginUserName").val();
      if (validateEmail(email)) {
          $('#loginUserNameFormGroup').removeClass(' has-error ')
          $('#loginUserNameValidationWarning').text("");
      } else {
          $('#loginUserNameFormGroup').addClass(' has-error ');
      }
      return false;
  }
</script>
</div>