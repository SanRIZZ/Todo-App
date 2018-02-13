<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="design"/>
    <title>Contact US</title>
    <asset:stylesheet src="bootstrap.css"/>
</head>
<body>
<div class = "box">
    <div class = "row">
        <div class = "col-lg-12">
            <h2 class = "intro-text text-center">Create
                <strong>Task</strong></h2>
            <hr>
            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>

            <g:form controller="tasks" action="save">
                <div class = "row">
                    <div class = "form-group col-lg-12">
                        <label>Title</label>
                        <input type="text" name="title" class="form-control" placeholder="Title"/>
                    </div>
                    <div class = "form-group col-lg-12">
                        <label>Enter your task here.....</label>
                        <textarea class = "form-control" rows= "6" placeholder="Task" name ="tasks"></textarea>
                    </div>
                    <div class = "form-group col-lg-12">
                        <button type = "submit" class = "btn btn-default">Submit</button>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>