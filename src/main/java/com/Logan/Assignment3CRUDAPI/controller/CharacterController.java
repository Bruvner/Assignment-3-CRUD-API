package com.Logan.assignment3crudapi.controller;

import com.Logan.assignment3crudapi.model.Character;
import com.Logan.assignment3crudapi.service.CharacterService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class CharacterController {

    private final CharacterService service;

    public CharacterController(CharacterService service) {
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<Character>> getAll() {
        return ResponseEntity.ok(service.getAllCharacters());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Character> getById(@PathVariable Long id) {
        return service.getCharacterById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Character> create(@RequestBody Character character) {
        Character saved = service.addCharacter(character);
        return ResponseEntity.created(URI.create("/characters/" + saved.getId())).body(saved);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Character> update(@PathVariable Long id, @RequestBody Character character) {
        return service.updateCharacter(id, character)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        boolean deleted = service.deleteCharacter(id);
        return deleted ? ResponseEntity.noContent().build() : ResponseEntity.notFound().build();
    }

    @GetMapping("/category/{universe}")
    public ResponseEntity<List<Character>> getByUniverse(@PathVariable String universe) {
        return ResponseEntity.ok(service.getByUniverse(universe));
    }

    @GetMapping("/search")
    public ResponseEntity<List<Character>> search(@RequestParam String name) {
        return ResponseEntity.ok(service.searchByName(name));
    }
}