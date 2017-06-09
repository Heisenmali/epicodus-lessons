import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'list-animal',
  template: `
    <div *ngFor="let animal of animals">
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

  editAnimal(animal) {
    this.editAnimalSender.emit(animal);
  }
}