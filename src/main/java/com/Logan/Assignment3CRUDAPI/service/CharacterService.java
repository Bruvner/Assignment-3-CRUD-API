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

    public Optional<Character> updateCharacter(Long id, Character updated) {
        return repository.findById(id).map(existing -> {
            existing.setName(updated.getName());
            existing.setDescription(updated.getDescription());
            existing.setUniverse(updated.getUniverse());
            existing.setSpecies(updated.getSpecies());
            existing.setRole(updated.getRole());
            return repository.save(existing);
        });
    }

    public boolean deleteCharacter(Long id) {
        if (repository.existsById(id)) {
            repository.deleteById(id);
            return true;
        }
        return false;
    }

    public List<Character> getByUniverse(String universe) {
        return repository.findByUniverse(universe);
    }

    public List<Character> searchByName(String name) {
        return repository.findByNameContainingIgnoreCase(name);
    }
}