<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bookstore Managment Page</title>
    <link href="../../includes/bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="../../includes/css/mycss.css" rel="stylesheet"/>
    <script src="../../includes/js/jQuery/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../../includes/bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="../../includes/ckeditor/ckeditor.js" type="text/javascript"></script>
</head>

<body>
    <cfparam name="tool" default="addedit" />
    <div id="wrapper" class="container">
        <div id="topheader" class="row">Top header</div>
        <div id="navbar" class="row">
            <cfoutput>
                <a href="#cgi.script_name#?tool=addedit">Add Edit</a> |
                <a href="#cgi.script_name#?tool=createuuids">Create UUIDs</a> |
                <a href="#cgi.script_name#?tool=content">Content</a> |
            </cfoutput>
            Nav Bar</div>
        <div id="maincontent" class="row">
            <cfinclude template="#tool#.cfm" />
        </div>
    </div>
</body>
</html>
