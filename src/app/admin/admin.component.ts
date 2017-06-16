import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { UserService } from '../user.service';
import { FirebaseListObservable } from 'angularfire2/database';
import { User } from '../user.model';


@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css'],
  providers: [UserService]
})
export class AdminComponent implements OnInit {

  constructor(private userService: UserService) { }

  ngOnInit() {
  }

  submitForm(name: string, age: number, bio: string, goal: string, type: string) {
    var newUser: User = new User(name, age, bio, goal, type);
    this.userService.addUser(newUser);
  }

}
