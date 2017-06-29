import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Task } from './task.model';


@Component({
  selector: 'task-list',
  template: `
    <select (change)="onChange($event.target.value)">
      <option value="allTasks">All Tasks</option>
      <option value="completedTasks">Completed Tasks</option>
      <option value="incompleteTasks" selected="selected">Incomplete Tasks</option>
    </select>

    <ul>
      <li *ngFor="let currentTask of childTaskList | completeness:filterByCompleteness">{{currentTask.description}}
      <input *ngIf="currentTask.done === true" type="checkbox" checked (click)="toggleDone(currentTask, false)"/>
      <input *ngIf="currentTask.done === false" type="checkbox" (click)="toggleDone(currentTask, true)"/>
      <button (click)="editButtonHasBeenClicked(currentTask)">Edit</button></li>
    </ul>
  `
})

export class TaskListComponent {
  @Input() childTaskList: Task[];
  @Output() clickSender = new EventEmitter();

  filterByCompleteness: string = "incompleteTasks";

  toggleDone(currentTask, doneOrNot) {
    currentTask.done = doneOrNot;
  }

  onChange(optionFromMenu: string) {
    this.filterByCompleteness = optionFromMenu;
  }

  isDone(clickedTask) {
    if(clickedTask.done === true) {
      console.log("This task is done!");
    } else {
      console.log("This task is not done. Better get to work!");
    }
  }

  priorityColor(currentTask){
    if (currentTask.priority === 3){
      return "bg-danger";
    } else if (currentTask.priority === 2) {
      return  "bg-warning";
    } else {
      return "bg-info";
    }
  }

  editButtonHasBeenClicked(taskToEdit) {
   this.clickSender.emit(taskToEdit);
  }
}
