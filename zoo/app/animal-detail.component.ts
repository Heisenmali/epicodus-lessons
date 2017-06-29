import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'animal-detail',
  template: `
    <div>
      <p>Age: {{animal.age}}</p>
      <p>Diet: {{animal.diet}}</p>
      <p>Location: {{animal.location}}</p>
      <p>Caretakers: {{animal.caretakers}}</p>
      <p>Sex: {{animal.sex}}</p>
      <p>Likes: {{animal.likes}}</p>
      <p>Dislikes: {{animal.dislikes}}</p> 
    </div>
  `
})

export class AnimalDetailComponent {
  @Input() animal: Animal;
  @Input() childDetail: boolean;
}