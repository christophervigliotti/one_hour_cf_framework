<!--- 
TODO: replace with 
<cfscript>
    request.queries.authors_all = application.model.authors.getAll(application.datasource);
</cfscript>
--->
<cfscript>
  request.bio_maxlength = 50;
</cfscript>
<cfquery name="request.queries.authors_all" datasource="cfbookclub">
    select 
    authors.firstname,
    authors.lastname,
    authors.bio,
    (
    select count(title) from books 
    where books.authorid = authors.authorid
    ) as book_count
    from authors
</cfquery>

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-end">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Book&nbsp;Count</th>
      <th scope="col">Bio</th>
      <th scope="col">Actions</th>      
    </tr>
  </thead>
  <tbody>
    <cfoutput query="request.queries.authors_all">
        <cfscript>
          request.bio_converted = Replace(bio, "\n", "<br />", "ALL");
          request.bio_tooltip = '<em>Bio:</em>' & Trim(Replace(bio, "\n", ".", "ALL"));
          request.bio_partial = (Len(bio) > request.bio_maxlength)?(Left(request.bio_converted,request.bio_maxlength) & '...'):request.bio_converted;
        </cfscript>
        <tr>
        <th scope="row">#currentrow#</th>
        <td>#lastname#</td>
        <td>#firstname#</td>
        <td>#book_count#</td>
        <td>
          <span<!---  data-toggle="tooltop" title="#request.bio_tooltip#" --->>
            #request.bio_partial#
          </span>
        </td>
        <td class="actions">
            <!--
            was <button class="btn btn-primary mb-3">Edit</button>
            -->
            <a class='btn btn-warning mb3' href="?action=author&author_id=">Edit Author</a>
            <a class='btn btn-primary mb3' href="?action=author&author_id=">View Books</a>
        </td>
        </tr>
    </cfoutput>
  </tbody>
</table>