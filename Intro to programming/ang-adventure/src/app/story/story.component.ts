import { Component, OnInit } from '@angular/core';
import { Character } from '../character.model';
import { CharacterService } from '../character.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-story',
  templateUrl: './story.component.html',
  styleUrls: ['./story.component.css'],
  providers: [CharacterService]
})
export class StoryComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
