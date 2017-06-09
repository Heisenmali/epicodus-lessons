import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'list-animal',
  template: `
    <div id="selectMenu">
      <select (change)="onChangeAge($event.target.value)">
        <option value="0" selected="selected">Show all animals</option>
        <option value="1">Animals younger than 2 years old</option>
        <option value="2">Animals older than 2 years old</option>
      </select>
    </div>

    <div *ngFor="let animal of animals | ageSort:selectedAge" >
      <h3>{{animal.name}} - {{animal.species}}</h3>
      <p>Age: {{animal.age}}</p>
      <p>Diet: {{animal.diet}}</p>
      <p>Location: {{animal.location}}</p>
      <p>Caretakers: {{animal.caretakers}}</p>
      <p>Sex: {{animal.sex}}</p>
      <p>Likes: {{animal.likes}}</p>
      <p>Dislikes: {{animal.dislikes}}</p>
      <button (click)="editAnimal(animal)">Edit Animal</button>
    </div>
  `
})


export class ListAnimalComponent {
  @Input() animals: Animal[];
  @Output() editAnimalSender = new EventEmitter;
  @Output() selectedAgeSender = new EventEmitter;

  selectedAge: number = 0;


  editAnimal(animal) {
    this.editAnimalSender.emit(animal);
  }

  onChangeAge(age) {
    this.selectedAge = parseInt(age);
  }
}