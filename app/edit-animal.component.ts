import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'edit-animal',
  template: `
    <h2>Edit</h2>
    <form>
      <label class="db fw4 lh-copy f6">Species</label>
      <input  [(ngModel)]="animal.species" name="species" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Name</label>
      <input  [(ngModel)]="animal.name" name="name" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Age</label>
      <input  [(ngModel)]="animal.age" name="age" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Diet</label>
      <input  [(ngModel)]="animal.diet" name="diet" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Location</label>
      <input  [(ngModel)]="animal.location" name="location" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Caretakers</label>
      <input  [(ngModel)]="animal.caretakers" name="caretakers" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Sex</label>
      <input  [(ngModel)]="animal.sex" name="sex" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Likes</label>
      <input  [(ngModel)]="animal.likes" name="likes" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <label class="db fw4 lh-copy f6">Dislikes</label>
      <input  [(ngModel)]="animal.dislikes" name="dislikes" type="text" class="pa2 input-reset ba bg-transparent w-100 measure">

      <a class="f6 link dim ba ph3 pv2 mb2 dib black" (click)="finishedEdit()" >Save changes</a>
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