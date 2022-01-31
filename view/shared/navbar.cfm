<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <h1 class="navbar-brand font-weight-bold mt-1" href="#">{ 1 hr cf fw }</h1>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <cfoutput>
          <a class="nav-link #((url.action EQ 'home')?'active':'')#" href="?action=home">Home</a>
          <a class="nav-link #((url.action EQ 'books')?'active':'')#" href="?action=books">Books</a>
          <a class="nav-link #((url.action EQ 'authors')?'active':'')#" href="?action=authors">Authors</a>
          <a class="nav-link #((url.action EQ 'authors')?'active':'')#" href="?action=test">Interview Test</a>
          <a class="nav-link #((url.action EQ 'jquery')?'active':'')#" href="?action=jquery">jQuery</a>
        </cfoutput>
      </div>
    </div>
  </div>
</nav>