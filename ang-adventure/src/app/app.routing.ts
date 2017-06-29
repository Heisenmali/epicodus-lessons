import { ModuleWithProviders }  from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CreateCharacterComponent } from './create-character/create-character.component';
import { StoryComponent } from './story/story.component';
import { ChapterComponent } from './chapter/chapter.component';

const appRoutes: Routes = [
  {
    path: '',
    component: CreateCharacterComponent
  },
  {
    path: 'story/:chapter',
    component: StoryComponent
  }
];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);
