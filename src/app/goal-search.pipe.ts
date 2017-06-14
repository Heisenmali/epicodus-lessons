import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'goalSearch'
})
export class GoalSearchPipe implements PipeTransform {

  transform(projects: any[], filterGoal) {
    var output = [];

    if (filterGoal != 0) {
      for (var i in projects) {
        if ((parseInt(projects[i].goal) < filterGoal) && (parseInt(projects[i].goal) > filterGoal / 2)) {
          output.push(projects[i])
        }
      }
      return output;
    } else {
      return projects;
    }
  }


}
