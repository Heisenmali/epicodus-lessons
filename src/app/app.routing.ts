import { ModuleWithProviders }  from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListProjectsComponent } from './list-projects/list-projects.component';

const appRoutes: Routes = [
  {
    path: '',
    component: ListProjectsComponent
  }];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);
