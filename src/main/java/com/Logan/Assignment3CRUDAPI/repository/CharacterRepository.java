package com.Logan.assignment3crudapi.repository;

import com.Logan.assignment3crudapi.model.Character;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface CharacterRepository extends JpaRepository<Character, Long> {

    List<Character> findByUniverse(String universe);

    List<Character> findByNameContainingIgnoreCase(String name);

}