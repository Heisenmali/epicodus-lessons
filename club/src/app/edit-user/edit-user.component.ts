import { Component, Input, OnInit } from '@angular/core';
import { UserService } from '../user.service';

@Component({
  selector: 'app-edit-user',
  templateUrl: './edit-user.component.html',
  styleUrls: ['./edit-user.component.css'],
  providers: [UserService]
})
export class EditUserComponent implements OnInit {
@Input() selectedUser;
  constructor(private userService: UserService) { }

  ngOnInit() {
  }

  beginUpdatingUser(userToUpdate) {
    this.userService.updateUser(userToUpdate);
  }

  beginDeletingUser(UserToDelete) {
     if(confirm("Are you sure?")) {
      this.userService.deleteUser(UserToDelete);
}
  }

}
