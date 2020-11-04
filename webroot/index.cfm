
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>Read These Books!</title>
    <link href="../includes/bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="../includes/css/index.css" rel="stylesheet"/>
    <script src="../includes/js/jQuery/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../includes/bootstrap/js/bootstrap.js" type="text/javascript"></script>

<script src="https://kit.fontawesome.com/adfae6cefa.js" crossorigin="anonymous"></script>




    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Serif:wght@300;400&display=swap" rel="stylesheet">



</head>

<body>
        <div id="topHeader" class="container">
             <cfinclude template="header.cfm">

        </div>
        <div id="horizontalnav" class="row">
             <cfinclude template="horizontalnav.cfm">
        </div>


<div id="carousel-wrap" class="container">

 <cfinclude template="carousel.cfm">
</div>

<div id="genrenavigation">
<cfinclude template="genrenav.cfm">
</div>


<div id="footer" class="container">
<cfinclude template="footer.cfm">
</div>
</body>
</html>
