<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_name" content="${_csrf.parameterName}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${webapp}/css/css.css" rel="stylesheet">
    <link href="${webapp}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${webapp}/js/jquery-1.11.0.js"></script>
    <script src="${webapp}/js/bootstrap.min.js"></script>
    <script src="${webapp}/js/jquery-ui-1.10.4.custom.js"></script>
    <script src="${webapp}/js/util.js"></script>    
  </head>
<body>

<div class="container">
    <div class="left-row">
        <div class="list-group">
            <a class="list-group-item active" href="#">a</a>
            <a class="list-group-item child" href="${rc.contextPath}">a-1</a>
            <a class="list-group-item active" href="#">b</a>
            <a class="list-group-item child" href="${rc.contextPath}">b-1</a>
        </div>
    </div>
    <div class="center-row">
        <@mid/>
    </div>
</div>
</body>
<style type="text/css">
    .left-row{
        width: 200px;
        float: left;
    }
    .child{}
</style>
</html>


<#include "../base.ftl">
<#macro mid>
//code here
</#macro>
