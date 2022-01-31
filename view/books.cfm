<!--- 
TODO: replace with 
<cfscript>
    request.queries.books_all = application.model.books.getAll(application.datasource);
</cfscript>
--->
<cfquery name="request.queries.books_all" datasource="cfbookclub">
    select 
    books.title,
    books.genre,
    books.bookdescription,
    authors.firstname,
    authors.lastname
    from BOOKS
    inner join authors 
    on books.authorid = authors.authorid
</cfquery>