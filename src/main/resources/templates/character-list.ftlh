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
        <li class="nav-item"><a class="nav-link" href="/characters/">Details</a></li>
        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
        <li class="nav-item"><a class="nav-link" href="/characters/create">Add a Character</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container mt-4">

  <h1 class="text-center mb-4">Star Wars Character Gallery</h1>

  <p class="text-center text-muted mb-5">
    Explore some important characters from the Star Wars universe.
  </p>

  <input
    type="text"
    id="searchInput"
    class="form-control mb-4"
    placeholder="Search characters by name..."
  >

  <div class="row" id="characterGrid">
    <#list characterList as character>
      <div class="col-md-4 mb-4 character-card" data-name="${character.name?lower_case}">
        <div class="card h-100">
          <img
            src="/images/${character.imageFile!''}"
            class="card-img-top"
            alt="${character.name}"
          >
          <div class="card-body">
            <h5 class="card-title">${character.name}</h5>
            <p class="card-text">
              ${character.description}
            </p>
            <a href="/characters/${character.id?c}" class="btn btn-primary">View Details</a>
          </div>
        </div>
      </div>
    </#list>
  </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<script>
  const searchInput = document.getElementById("searchInput");
  const cards = document.getElementsByClassName("character-card");

  searchInput.addEventListener("keyup", function () {
    const filter = searchInput.value.toLowerCase();

    for (let card of cards) {
      const name = card.getAttribute("data-name");
      card.style.display = name.includes(filter) ? "block" : "none";
    }
  });
</script>

</body>
</html>