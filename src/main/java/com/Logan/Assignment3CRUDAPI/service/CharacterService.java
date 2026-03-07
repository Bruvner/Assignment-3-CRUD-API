package com.Logan.assignment3crudapi.service;

import com.Logan.assignment3crudapi.model.Character;
import com.Logan.assignment3crudapi.repository.CharacterRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CharacterService {

    private final CharacterRepository repository;

    public CharacterService(CharacterRepository repository) {
        this.repository = repository;
    }

    public List<Character> getAllCharacters() {
        return repository.findAll();
    }

    public Optional<Character> getCharacterById(Long id) {
        return repository.findById(id);
    }

    public Character addCharacter(Character character) {
        return repository.save(character);
    }

    public Character updateCharacter(Long id, Character updatedCharacter) {
        return repository.findById(id).map(character -> {
            character.setName(updatedCharacter.getName());
            character.setDescription(updatedCharacter.getDescription());
            character.setUniverse(updatedCharacter.getUniverse());
            character.setSpecies(updatedCharacter.getSpecies());
            return repository.save(character);
        }).orElse(null);
    }

    public void deleteCharacter(Long id) {
        repository.deleteById(id);
    }

    public List<Character> getByUniverse(String universe) {
        return repository.findByUniverse(universe);
    }

    public List<Character> searchByName(String name) {
        return repository.findByNameContainingIgnoreCase(name);
    }
}