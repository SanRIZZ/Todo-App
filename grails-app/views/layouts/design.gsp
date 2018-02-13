<html>
<head>
    <title><g:layoutTitle default="Todo App"/></title>
    <asset:stylesheet src="bootstrap.css"/>
</head>
<body>

<!-------------------------------Discussed and learned bootstrap in group with Alankar Pokhrael, Kaushal Wagle and Amar Shrestha ---------------------------->

<!-- Learned mostly from notes online and this video:  https://www.youtube.com/watch?v=Ct7APU7t-ts -->
<!--------------------------------------------------- The main container that holds contents of webpage starts here -------------------------------->
<div class = "container">

    <!--------------------------------------------------------------------------- navigation ----------------------------------------------------------->
    <div class = "navbar navbar-inverse bg-inverse" role = "navigation">
        <div class = "navbar-header">
            <button type = "button" class = "navbar-toggle" data-toggle = "collapse" data-target = ".navbar-collapse">
                <span class = "sr-only">Menu</span>
                <span class = "icon-bar"></span>
                <span class = "icon-bar"></span>
                <span class = "icon-bar"></span>
            </button>
            <div class = "container-fluid">
                <span class = "navbar-brand"><g:link controller="home" action="index">K Garnuxa??? </g:link></span>
            </div>
        </div>
        <div class = "navbar-collapse collapse navbar-right">
            <ul class = "nav navbar-nav">
                <li><g:link controller="home" action="index">Home</g:link></li>
                <li><g:link controller="tasks" action="index">Create Task</g:link></li>
                <li><g:link controller="home" action="completed">Completed Task</g:link></li>
                <li><g:link controller="contact" action="index">Contact</g:link></li>
            </ul>
        </div>
    </div>
    <g:layoutBody/>
    <footer>
        <div class="footer-copyright text-center">
            <div class="container-fluid">
                © 2018 Copyright: <a href="https://facebook.com/43sabin"><strong> SanRIZZ Sabin Shrestha</strong></a>
            </div>
        </div>
    </footer>
</div>
<asset:javascript src="jquery-2.2.0.min.js"/>
<asset:javascript src="bootstrap.js"/>
</body>
</html>