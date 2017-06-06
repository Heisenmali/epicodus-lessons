import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
  <div *ngFor="let recipe of recipes">
    <h2>{{recipe.title}}</h2>
    <ul>
      <li *ngFor="let ingredient of recipe.ingredients">{{ingredient}}</li>
    </ul>
    <ol>
      <li *ngFor="let direction of recipe.directions">{{direction}}</li>
    </ol>
  </div>
  `
})

export class AppComponent {
  recipes: Recipe[] = [
    new Recipe('Chocolate brownie', ['chocolate', 'chocolate', 'more chocolate'], ['aquire chocolate', 'do the thang', 'eat leftover chocolate'])
  ];
}

export class Recipe {
  constructor (public title: string, public ingredients: string[], public directions: string[]) { }
}
