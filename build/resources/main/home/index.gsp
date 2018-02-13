<html>
<head>
    <title>Todo App</title>
    <asset:stylesheet src="bootstrap.css"/>
    <meta name="layout" content="design"/>
</head>
<body>
<div class = "box">
    <div class = "row">
        <div class = "col-lg-12">
            <hr>
            <h3 class = "intro-text text-center"><strong>Here are your task for today</strong>
            </h3>
            <hr>
        </div>
    </div>
</div>
    <div class = "row">
        <g:each var="b" in="${taskList}">
            <g:if test ="${!b.isCompleted || b.isCompleted == null}">
                <div class = "col-sm-6 col-md-4 col-lg-4">
                    <div class = "panel panel-default">
                        <div class= "panel-body">
                            <p>
                                <g:form action="check" controller="home">
                                    <g:textField name="temp" value="${b.title}">
                                    </g:textField>
                                    <button type = "submit" name ="check" class="pull-right">Check Completed</button>
                                </g:form>
                            </p>
                            <hr>
                            <p>${b.tasks}</p>

                        </div>
                    </div>
                </div>
            </g:if>
        </g:each>
</div>
</body>
</html>