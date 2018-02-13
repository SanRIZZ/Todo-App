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
            <h3 class = "intro-text text-center"><strong>Here are your completed tasks.</strong>
            </h3>
            <hr>
        </div>
    </div>
    <div class = "row">
        <g:each var="b" in="${taskList}">
            <g:if test ="${b.isCompleted}">
                <div class = "col-sm-6 col-md-4 col-lg-4">
                    <div class = "panel panel-default">
                        <div class= "panel-body">
                            <p>
                                ${b.title}
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