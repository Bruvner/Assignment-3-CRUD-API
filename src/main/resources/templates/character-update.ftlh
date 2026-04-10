<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Character</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">

  <h1>Update Character</h1>

  <form action="/characters/update/${character.characterId}" method="post">

    <div class="mb-3">
      <label>Name</label>
      <input type="text" name="name" value="${character.name}" class="form-control">
    </div>

    <div class="mb-3">
      <label>Description</label>
      <textarea name="description" class="form-control">${character.description}</textarea>
    </div>

    <div class="mb-3">
      <label>Universe</label>
      <input type="text" name="universe" value="${character.universe}" class="form-control">
    </div>

    <div class="mb-3">
      <label>Species</label>
      <input type="text" name="species" value="${character.species}" class="form-control">
    </div>

    <div class="mb-3">
      <label>Role</label>
      <input type="text" name="role" value="${character.role}" class="form-control">
    </div>

    <div class="mb-3">
      <label>Image File</label>
      <input type="text" name="imageFile" value="${character.imageFile}" class="form-control">
    </div>

    <button class="btn btn-primary">Update</button>
    <a href="/characters" class="btn btn-secondary">Cancel</a>

  </form>

</div>

</body>
</html>