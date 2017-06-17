import { Component, OnInit } from '@angular/core';
import { Project } from '../project.model';
import { Router } from '@angular/router';
import { ProjectService } from '../project.service';
import { FirebaseListObservable } from 'angularfire2/database';

@Component({
  selector: 'list-projects',
  templateUrl: './list-projects.component.html',
  styleUrls: ['./list-projects.component.css'],
  providers: [ProjectService]
})
export class ListProjectsComponent implements OnInit {
  projects: any[];
  currentRoute: string = this.router.url;
  filterByGoal = 0;


  constructor(private projectService: ProjectService, private router: Router) { }

  ngOnInit() {
    this.projectService.getProjects().subscribe(data => {
      this.projects = data;
    });
  }

  goToDetail(clickedProject) {
    this.router.navigate(['projects', clickedProject.$key]);
  }

  onChangeProject(optionFromMenu) {
    this.filterByGoal = parseInt(optionFromMenu);
  }
}
