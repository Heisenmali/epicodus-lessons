import { Pipe, PipeTransform } from '@angular/core';
import { User } from './user.model';

@Pipe({
  name: 'type'
})
export class TypePipe implements PipeTransform {

  transform(climbers: any[], type) {
    var output: User[] = [];

    if (type === 'AllUsers') return climbers;

    for (var i in climbers) {
      if (climbers[i].type === type) {
        output.push(climbers[i]);
      }
    }
    return output;
  }

}
