import { Component, Input, Output, EventEmitter } from '@angular/core'
import { Task } from './task.model'


@Component({
  selector: 'new-task',
  template: `
  <h3>New Task</h3>
    <form>
      <label>Enter Task Description:</label>
      <input #newDescription>
      <button (click)="newTask(newDescription.value); newDescription.value='';">Done</button>
    </form>
  `
})

export class NewTaskComponent {
  @Output() createTaskSender = new EventEmitter;

  newTask(newDescription) {
    this.createTaskSender.emit(newDescription);
  }
}
