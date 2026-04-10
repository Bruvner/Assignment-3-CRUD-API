<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Luke Skywalker - Details</title>
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

  <h1 class="mb-4">${character.name}</h1>

  <div class="row">

    <div class="col-md-5">
      <img
        src="/images/LukeSkywalker.jpg"
        class="img-fluid rounded mb-4"
        alt="${character.name}"
      >
    </div>

    <div class="col-md-7">
      <p>
        ${character.description}
      </p>

      <ul class="list-group mb-4">
        <li class="list-group-item"><strong>Universe:</strong> ${character.universe}</li>
        <li class="list-group-item"><strong>Species:</strong> ${character.species}</li>
        <li class="list-group-item"><strong>Role:</strong> ${character.role}</li>
      </ul>

      <p>
        Luke Skywalker is a Jedi Knight and central figure in the original Star Wars trilogy.
        Raised on Tatooine, he discovers his connection to the Force and plays a key role
        in the defeat of the Galactic Empire.
      </p>
    </div>

  </div>

  <div class="mt-4">
    <a href="/characters" class="btn btn-secondary me-2">Back to Gallery</a>
    <a href="/about" class="btn btn-outline-primary me-2">About</a>
    <a href="/characters/create" class="btn btn-outline-success">Add a Character</a>
  </div>

<a href="/characters/update/${character.characterId}" class="btn btn-warning">
  Edit Character
</a>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>