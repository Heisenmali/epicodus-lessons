import { Pipe, PipeTransform } from '@angular/core';
import { Animal } from './animal.model';

@Pipe ({
  name: 'ageSort',
  pure: false
})

export class AgePipe implements PipeTransform {
  transform(input: Animal[], age) {

    let output: Animal [] = [];

    if (age === 1) {
      for (let i = 0; i < input.length; i ++) {
        if (input[i].age <= 2) {
          output.push(input[i]);
        }
      } 
      return output;
    } else if (age === 2) {
      for (let i = 0; i < input.length; i ++) {
        if (input[i].age > 2) {
          output.push(input[i]);
        }
      }
      return output;
    } else {
      return input;
    }
  }
}