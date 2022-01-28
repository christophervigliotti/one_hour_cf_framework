<cfscript>
  request.shared.header.filename = '/cf_app/js/#request.view.template_name#.js';
</cfscript>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- jQuery -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"></script>

    <cfoutput>

      <!-- js -->
      <cfif FileExists(ExpandPath(request.shared.header.filename))>
        <script type="text/javascript" src="#request.shared.header.filename#"></script>
      </cfif>

      <!-- title -->
      <title>#request.view.page_title#</title>

    </cfoutput>
  </head>
  <body>
    <cfoutput>
      <h1>#request.view.page_title#</h1>
    </cfoutput>
    <!-- nav -->
    <a href="?action=home">Home</a> | <a href="?action=database_test">Database Test</a>