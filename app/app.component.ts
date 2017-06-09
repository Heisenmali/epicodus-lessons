import { Component } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'app-root',
  template: `
    <list-animal [animals]="animals"></list-animal>
  `
})

export class AppComponent {
  animals: Animal[] = [
    new Animal('Arctic Fox', 'Moon', 2, 'Carnivore', 'Northern Trail', 3, 'Female', 'Chocolate', 'Olives'),
    new Animal('Black Leopard', 'Goeff', 4, 'Carnivore', 'Southern Trail', 1, 'Male', 'Chicken', 'Daylight'),
    new Animal('Black Tailed Deer', 'Tinkerbell', 7, 'Herbivore', 'Northern Trail', 2, 'Female', 'Leaves', 'Loud Noises')
  ];
}


