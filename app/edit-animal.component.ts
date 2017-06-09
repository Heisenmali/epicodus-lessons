import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'edit-animal',
  template: `
    <h2>Edit</h2>
    <form>
      <label>Species</label>
      <input [(ngModel)]="animal.species" name="species" type="text">
      
      <label>Name</label>
      <input [(ngModel)]="animal.name" name="name" type="text">
            
      <label>Age</label>
      <input [(ngModel)]="animal.age" name="age" type="text">
            
      <label>Diet</label>
      <input [(ngModel)]="animal.diet" name="diet" type="text">
            
      <label>Location</label>
      <input [(ngModel)]="animal.location" name="location" type="text">
            
      <label>Caretakers</label>
      <input [(ngModel)]="animal.caretakers" name="caretakers" type="text">
            
      <label>Sex</label>
      <input [(ngModel)]="animal.sex" name="sex" type="text">
            
      <label>Likes</label>
      <input [(ngModel)]="animal.likes" name="likes" type="text">
            
      <label>Dislikes</label>
      <input [(ngModel)]="animal.dislikes" name="dislikes" type="text">
            
      <button (click)="finishedEdit()" >Save changes</button>
    </form>
  `
})

export class EditAnimalComponent {
  @Input() animal: Animal;
  @Output() finishedEditSender = new EventEmitter;

  finishedEdit() {
    this.finishedEditSender.emit();
  }
}