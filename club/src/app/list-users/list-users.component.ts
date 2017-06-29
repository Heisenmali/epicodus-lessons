import { Component, OnInit } from '@angular/core';
import { User } from '../user.model';
import { UserService } from '../user.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-list-users',
  templateUrl: './list-users.component.html',
  styleUrls: ['./list-users.component.css'],
  providers: [UserService]
})
export class ListUsersComponent implements OnInit {
  users: any[];
  climbingType = 'AllUsers';
  currentRoute: string = this.router.url;

  constructor(private userService: UserService, private router: Router) { }

  ngOnInit() {
    this.userService.getUsers().subscribe(data => {
      this.users = data;
    })
  }

  goToDetail(clickedUser) {
    this.router.navigate(['users', clickedUser.$key])
  }

  onChangeUser(type) {
    this.climbingType = type;
  }

}
