    <hr />
    <cfoutput>
      JS File Exists? #request.shared.header.filename# exists? #FileExists(ExpandPath(request.shared.header.filename))#
      <br />
      view...
      <cfdump var="#request.view#">
    </cfoutput>
  </body>
</html>