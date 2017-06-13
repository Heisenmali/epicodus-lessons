import { Component, OnInit } from '@angular/core';
import { Character } from '../character.model';
import { CharacterService } from '../character.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-create-character',
  templateUrl: './create-character.component.html',
  styleUrls: ['./create-character.component.css'],
  providers: [CharacterService]
})
export class CreateCharacterComponent implements OnInit {
  trait = 'courage';
  constructor(private characterService: CharacterService) { }

  ngOnInit() {
  }

  onChangeTrait(trait) {
    this.trait = trait;
  }

  createCharacter(name) {
    let newCharacter = new Character(name, this.trait);
    this.characterService.addCharacter(newCharacter);
    this.router.navigate(['story', 0]);
  }

}
