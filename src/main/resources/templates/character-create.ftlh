<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add a New Character</title>
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

  <h1 class="mb-4">Add a New Character</h1>

  <form action="/characters/create" method="post">

    <div class="mb-3">
      <label class="form-label">Character Name</label>
      <input type="text" name="name" class="form-control" placeholder="Enter character name" required>
    </div>

    <div class="mb-3">
      <label class="form-label">Description</label>
      <textarea name="description" class="form-control" rows="4" placeholder="Brief description of the character" required></textarea>
    </div>

    <div class="mb-3">
      <label class="form-label">Universe</label>
      <input type="text" name="universe" class="form-control" placeholder="e.g., Star Wars">
    </div>

    <div class="mb-3">
      <label class="form-label">Species</label>
      <input type="text" name="species" class="form-control" placeholder="e.g., Human">
    </div>

    <div class="mb-3">
      <label class="form-label">Role</label>
      <input type="text" name="role" class="form-control" placeholder="Hero, Villain, etc.">
    </div>

    <div class="mb-3">
      <label class="form-label">Image File Name</label>
      <input type="text" name="imageFile" class="form-control" placeholder="e.g., LukeSkywalker.jpg">
    </div>

    <button type="submit" class="btn btn-success">Submit Character</button>
    <a href="/characters" class="btn btn-secondary ms-2">Cancel</a>

  </form>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>