import { Injectable } from '@angular/core';
import { User } from './user.model';
import { AngularFireDatabase, FirebaseListObservable } from 'angularfire2/database';

@Injectable()
export class UserService {

  users: FirebaseListObservable<any[]>

  constructor(private database: AngularFireDatabase) { 
    this.users = database.list('users');
  }

  getUsers() {
    return this.users;
  }

  findUserById(userId: string) {
    return this.database.object('users/' + userId);
  }

  addUser(newUser) {
    this.users.push(newUser);
  }
  
  updateUser(userToUpdate) {
    var userEntryInFirebase = this.findUserById(userToUpdate.$key);
    userEntryInFirebase.update({
      name: userToUpdate.name,
      age: userToUpdate.age,
      bio: userToUpdate.bio,
      goal: userToUpdate.goal,
      type: userToUpdate.type
    })
  }

  deleteUser(userToDelete) {
    var userEntryInFirebase = this.findUserById(userToDelete.$key);
    userEntryInFirebase.remove();
  }
}
