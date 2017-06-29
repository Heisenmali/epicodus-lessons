import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Animal } from './animal.model';

@Component({
  selector: 'list-animal',
  template: `
    <div id="selectMenu">
      <select  class="f6 link dim ba ph3 pv2 mb2 dib black" (change)="onChangeAge($event.target.value)">
        <option value="0" selected="selected">Show all animals</option>
        <option value="1">Animals younger than 2 years old</option>
        <option value="2">Animals older than 2 years old</option>
      </select>
    </div>

    <div *ngFor="let animal of animals | ageSort:selectedAge">
      <h3>{{animal.name}} - {{animal.species}}</h3>
      <animal-detail [animal]="animal"></animal-detail>
      <a (click)="editAnimal(animal)" class="f6 link dim ba ph3 pv2 mb2 dib black">Edit Animal</a>
    </div>
  `
})


export class ListAnimalComponent {
  @Input() animals: Animal[];
  @Output() editAnimalSender = new EventEmitter;
  @Output() selectedAgeSender = new EventEmitter;

  selectedAge: number = 0;
  selectedAnimal = null;

  editAnimal(animal) {
    this.editAnimalSender.emit(animal);
  }

  onChangeAge(age) {
    this.selectedAge = parseInt(age);
  }

  toggleDetail(animal) {
    this.selectedAnimal = animal;
    animal.detail = !animal.detail;
    //Toggling the details for each animal is tricky. This can be solved by a service. For now I will display all the information for all the animals.
  }
}