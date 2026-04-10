package com.Logan.assignment3crudapi.controller;

import com.Logan.assignment3crudapi.model.Character;
import com.Logan.assignment3crudapi.service.CharacterService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CharacterMvcController {

    private final CharacterService service;

    public CharacterMvcController(CharacterService service) {
        this.service = service;
    }

    @GetMapping("/characters")
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", service.getAllCharacters());
        return "character-list";
    }

    @GetMapping("/characters/{id}")
    public String getCharacterById(@PathVariable Long id, Model model) {
        model.addAttribute("character", service.getCharacterById(id).orElse(null));
        return "character-details";
    }

    @GetMapping("/about")
    public String aboutPage() {
        return "about";
    }

    @GetMapping("/characters/create")
    public String showCreateForm() {
        return "character-create";
    }

    @PostMapping("/characters/create")
    public String createCharacter(Character character) {
        service.addCharacter(character);
        return "redirect:/characters";
    }
}