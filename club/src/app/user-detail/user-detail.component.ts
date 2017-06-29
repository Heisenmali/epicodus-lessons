import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Params } from '@angular/router';
import { Location } from '@angular/common';
import { User } from '../user.model';
import { UserService } from '../user.service';

@Component({
  selector: 'app-user-detail',
  templateUrl: './user-detail.component.html',
  styleUrls: ['./user-detail.component.css'],
  providers: [UserService]
})
export class UserDetailComponent implements OnInit {
  userId: string;
  userToDisplay;

  constructor(private userService: UserService, private router: ActivatedRoute, private location: Location) { }

  ngOnInit() {
    this.router.params.forEach((urlParam) => {
      this.userId = urlParam['id'];
    });
    this.userToDisplay = this.userService.findUserById(this.userId);
  }

}
