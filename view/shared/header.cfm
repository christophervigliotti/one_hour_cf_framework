<cfscript>
  request.shared.header.filename = 'js/#request.view.template_name#.js';
</cfscript>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="css/styles.css" rel="stylesheet">

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
    <cfinclude template="navbar.cfm" />
    <cfoutput>
      <h1 class="display-1">
        #request.view.page_title#
        <cfswitch expression="#url.action#">
          <cfcase value="authors">
            <button type="button" class="btn btn-primary">Add Author</button>
          </cfcase>
          <cfcase value="books">
            <button type="button" class="btn btn-primary">Add Book</button>
          </cfcase>
        </cfswitch>
      </h1>
    </cfoutput>
