    <hr />
    <cfoutput>
      JS File Exists? #request.shared.header.filename# exists? #FileExists(ExpandPath(request.shared.header.filename))#
      <br />
      request scope...
      <cfdump var="#request#">
    </cfoutput>
  </body>
</html>