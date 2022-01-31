<cfdbinfo datasource="cfbookclub" type="tables" name="result">
<cfdump var="#result#">

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

<cfdump var="#request.queries#">