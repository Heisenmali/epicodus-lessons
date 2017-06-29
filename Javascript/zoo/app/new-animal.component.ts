import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'new-animal',
  template: `
    <form>
      <label class="db fw4 lh-copy f6">Species</label>
      <input #species type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Name</label>
      <input #name type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Age</label>
      <input #age type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Diet</label>
      <input #diet type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Location</label>
      <input #location type="text" class="pa2 input-reset ba bg-transparent w-100 measure"> 

      <label class="db fw4 lh-copy f6">Caretakers</label>
      <input #caretakers type="text" class="pa2 input-reset ba bg-transparent w-100 measure"> 

      <label class="db fw4 lh-copy f6">Sex</label>
      <input #sex type="text" class="pa2 input-reset ba bg-transparent w-100 measure">  

      <label class="db fw4 lh-copy f6">Likes</label>
      <input #likes type="text" class="pa2 input-reset ba bg-transparent w-100 measure">   

      <label class="db fw4 lh-copy f6">Dislikes</label>
      <input #dislikes type="text" class="pa2 input-reset ba bg-transparent w-100 measure">   

      <a (click)="createAnimal(species.value, name.value, age.value, diet.value, location.value, caretakers.value, sex.value, likes.value, dislikes.value)" class="f6 link dim ba ph3 pv2 mb2 dib black">Add animal</a>
    </form>
  `
})

export class NewAnimalComponent {
  @Output() newAnimalSender = new EventEmitter;

  createAnimal(species, name, age, diet, location, caretakers, sex, likes, dislikes) {
    var newAnimal: Animal = new Animal(species, name, age, diet, location, caretakers, sex, likes, dislikes);
    this.newAnimalSender.emit(newAnimal);
  }
}