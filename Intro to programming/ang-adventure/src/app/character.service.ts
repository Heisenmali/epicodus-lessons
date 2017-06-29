import { Injectable } from '@angular/core';
import { Character } from './character.model';
import { CHARACTERS } from './mock-characters';

@Injectable()
export class CharacterService {

  constructor() { }

  getCharacters() {
    return CHARACTERS;
  }

  addCharacter(newCharacter) {
    CHARACTERS.push(newCharacter);
    console.log(CHARACTERS);
  }



}
