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
    public String getCharacterById(@PathVariable("id") Long id, Model model) {
        return service.getCharacterById(id)
                .map(character -> {
                    model.addAttribute("character", character);
                    return "character-details";
                })
                .orElse("redirect:/characters");
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
    public String createCharacter(@ModelAttribute Character character) {
        service.addCharacter(character);
        return "redirect:/characters";
    }

    @GetMapping("/characters/update/{id}")
    public String showUpdateForm(@PathVariable("id") Long id, Model model) {
        return service.getCharacterById(id)
                .map(character -> {
                    model.addAttribute("character", character);
                    return "character-update";
                })
                .orElse("redirect:/characters");
    }

    @PostMapping("/characters/update/{id}")
    public String updateCharacter(@PathVariable("id") Long id,
        @ModelAttribute Character character) {
        service.updateCharacter(id, character);
        return "redirect:/characters/" + id;
    }

    @GetMapping("/characters/delete/{id}")
    public String deleteCharacter(@PathVariable("id") Long id) {
        service.deleteCharacter(id);
        return "redirect:/characters";
    }
}