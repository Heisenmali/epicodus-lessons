import { ModuleWithProviders }  from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListUsersComponent } from './list-users/list-users.component';
import { UserDetailComponent } from './user-detail/user-detail.component';

const appRoutes: Routes = [
  {
    path: '',
    component: ListUsersComponent
  }, {
    path: 'users/:id',
    component: UserDetailComponent
  }
];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);