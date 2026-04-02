import { Component, inject } from '@angular/core';
import { Fixture } from '../fixture';
import { FixturesService } from '../fixtures.service';
import {CommonModule} from '@angular/common';


import { Team } from '../team';
import { TeamsService } from '../teams.service';

@Component({
  selector: 'app-fixtures',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './fixtures.component.html',
  styleUrl: './fixtures.component.css'
})


export class FixturesComponent {
  fixtures: Fixture[] = [];
  fixturesService = inject(FixturesService);

  teams: Team[] = [];
  teamService = inject(TeamsService);

  teamColour:any[] = [];

  constructor(){
      this.fixturesService.getFixtures().subscribe(
        response => {
          this.fixtures = response;
        }
      );

  }
  getTeamColour(){
        this.teamService.getTeams().subscribe(
        response => {
          this.teams = response;
          response.forEach((team: Team) => {
            this.teamColour[team.id] = team.rgb;
          });
        }
      );
      }

}
