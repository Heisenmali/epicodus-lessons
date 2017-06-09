import { Component } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'app-root',
  template: `
    <new-animal (newAnimalSender)="storeNewAnimal($event)"></new-animal>
    <list-animal [animals]="animals" (editAnimalSender)="selectAnimal($event)"></list-animal>
    <edit-animal *ngIf="edit" [animal]="selectedAnimal" (finishedEditSender)="finishedEdit()"></edit-animal>
  `
})

export class AppComponent {
  
  selectedAnimal = null;
  edit: boolean = false;

  animals: Animal[] = [
    new Animal('Arctic Fox', 'Moon', 2, 'Carnivore', 'Northern Trail', 3, 'Female', 'Chocolate', 'Olives'),
    new Animal('Black Leopard', 'Goeff', 4, 'Carnivore', 'Southern Trail', 1, 'Male', 'Chicken', 'Daylight'),
    new Animal('Black Tailed Deer', 'Tinkerbell', 7, 'Herbivore', 'Northern Trail', 2, 'Female', 'Leaves', 'Loud Noises')
  ];

  selectAnimal(animal: Animal) {
    this.selectedAnimal = animal;
    this.edit=true;
  }

  finishedEdit() {
    this.edit = false;
  }

  storeNewAnimal(newAnimal: Animal) {
    this.animals.push(newAnimal);
  }

}


