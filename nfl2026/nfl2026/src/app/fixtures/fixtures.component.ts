import { Component, inject } from '@angular/core';
import { Fixture } from '../fixture';
import { FixturesService } from '../fixtures.service';
import {CommonModule} from '@angular/common';


import { Team } from '../team';
import { TeamsService } from '../teams.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-fixtures',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './fixtures.component.html',
  styleUrl: './fixtures.component.css'
})


export class FixturesComponent {
  fixtures: Fixture[] = [];
  fixturesService = inject(FixturesService);

  teams: Team[] = [];
  teamService = inject(TeamsService);
 // teamColour: Team[] = [];

 selectedoption : string = ''
 roundNum : number = 1 ;

 options = [
  {id : '1', value: 0, label: 'All'},
  {id : '2', value: 1, label: 'D1'},
  {id : '3', value: 2, label: 'D2'},
  {id : '4', value: 3, label: 'D3'},
  {id : '5', value: 4, label: 'D4'},
 ]

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


      // DOES NOT WORK, CANNOT GET TEAM COLOURS TO DISPLAY IN FIXTURES
      // this.teamService.getTeams().subscribe(
      //   response => {
      //     this.teams = response;
      //     console.log(this.teams);
      //    response.forEach((team: Team) => {
      //       this.teamColour[team.rgb] = team;
      //     });
      //     console.log(this.teamColour);
      //   }
      // );

  }

}
