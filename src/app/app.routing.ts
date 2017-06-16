import { ModuleWithProviders }  from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListUsersComponent } from './list-users/list-users.component';

const appRoutes: Routes = [
  {
    path: '',
    component: ListUsersComponent
  }
];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);