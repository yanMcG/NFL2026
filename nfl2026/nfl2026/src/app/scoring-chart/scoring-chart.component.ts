import { Component, inject } from '@angular/core';
import { Fixture } from '../fixture';
import { FixturesService } from '../fixtures.service';
import {CommonModule} from '@angular/common';


import { Team } from '../team';
import { TeamsService } from '../teams.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-scoring-chart',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './scoring-chart.component.html',
  styleUrl: './scoring-chart.component.css'
})
export class ScoringChartComponent {

    fixtures: Fixture[] = [];
    fixturesService = inject(FixturesService);

    teams: Team[] = [];
    teamService = inject(TeamsService);

    mergedArray: any[] = [];

    //conactinate the two arrays

    constructor(){
        this.fixturesService.getFixtures().subscribe(
          response => {
            this.fixtures = response;
          }
        );
  
        this.teamService.getTeams().subscribe(
          response => {
            this.teams = response;
          }
        ); 
        this.press();
        //conactinate the two arrays https://youtu.be/9KGggRHysg0?si=-ccR9zOkJI4HimSO
        //this.fixtures = this.fixtures.concat(this.teams);

    }

     press(){
        this.mergedArray = [...this.fixtures, ...this.teams]
        console.log("button pressed")
        console.log('merged array:',this.mergedArray);
        }
  
}
