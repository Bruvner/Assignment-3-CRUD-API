<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Star Wars Gallery</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="/characters">Star Wars Gallery</a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="/characters">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="/characters/1">Details</a></li>
        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
        <li class="nav-item"><a class="nav-link" href="/characters/create">Add a Character</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container mt-4">

  <h1 class="mb-4">About the Star Wars Character Gallery</h1>

  <div class="row">

    <div class="col-md-5">
      <img
        src="/images/starwars.jpg"
        class="img-fluid rounded mb-4"
        alt="Star Wars"
      >
    </div>

    <div class="col-md-7">
      <p>
        This website was created as a static web app project to showcase
        characters from the Star Wars universe. The goal of the project
        was to practice building clean, responsive pages using HTML, CSS, and
        Bootstrap.
      </p>

      <p>
        Star Wars was chosen as the theme because it features
        iconic characters that are instantly recognizable for most. The gallery format
        allows users to explore characters visually while keeping a
        consistent and easy-to-navigate layout.
      </p>

      <p>
        The site demonstrates the use of reusable navigation components,
        Bootstrap grid layouts, image handling, and client-side
        interactivity such as search filtering.
      </p>
    </div>

  </div>

  <div class="mt-4">
    <a href="/characters" class="btn btn-primary me-2">Home</a>
    <a href="/characters/1" class="btn btn-outline-secondary me-2">Details</a>
    <a href="/characters/create" class="btn btn-outline-success">Add a Character</a>
  </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>