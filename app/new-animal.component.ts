import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'new-animal',
  template: `
    <form>
      <label>Species</label>
      <input #species type="text">

      <label>Name</label>
      <input #name type="text">

      <label>Age</label>
      <input #age type="text">

      <label>Diet</label>
      <input #diet type="text">

      <label>Location</label>
      <input #location type="text"> 

      <label>Caretakers</label>
      <input #caretakers type="text"> 

      <label>Sex</label>
      <input #sex type="text">  

      <label>Likes</label>
      <input #likes type="text">   

      <label>Dislikes</label>
      <input #dislikes type="text">   

      <button (click)="createAnimal(species.value, name.value, age.value, diet.value, location.value, caretakers.value, sex.value, likes.value, dislikes.value)">Add animal</button>
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