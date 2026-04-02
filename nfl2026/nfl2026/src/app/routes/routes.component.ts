//not a clue
import { Component, inject } from '@angular/core';

//interfaces to define the data
import { Team } from '../team';
import { Player } from '../player';
import { Manager } from '../manager';
import { Fixture } from '../fixture';

//services to get data
import { ManagersService } from '../managers.service';
import { PlayersService } from '../players.service';
import { TeamsService } from '../teams.service';
import { FixturesService } from '../fixtures.service';


//Pipes to display json data
import { JsonPipe } from '@angular/common';


@Component({
  selector: 'app-routes',
  standalone: true,
  imports: [JsonPipe],
  templateUrl: './routes.component.html',
  styleUrl: './routes.component.css'
})


export class RoutesComponent {

  //this is for the json container, arrays of data
  teams: Team[] = [] ;
  players: Player[] = [];
  managers: Manager[] = [];
  fixtures: Fixture[] = [];

  playerService = inject(PlayersService);
  teamsService = inject(TeamsService);
  managersService = inject(ManagersService);
  fixturesService = inject(FixturesService);

  //its the varibale storing the data for eahc object
  jsonData: any[] = [];

  getTeamsData(){
    console.log('clicked me')
    this.teamsService.getTeams().subscribe(
        response => {
          this.jsonData = response;
          console.log(this.jsonData);
          let jsonContainer = document.getElementById('json-container');
          if (jsonContainer) {
            jsonContainer.innerHTML = `<pre>${JSON.stringify(this.jsonData, null, 1)}</pre>`;
          }
        }
      );

  }

  getPlayersData(){
    console.log('clicked me')
    this.playerService.getPlayers().subscribe(
        response => {
          this.jsonData = response;
          console.log(this.jsonData);
          let jsonContainer = document.getElementById('json-container');
          if (jsonContainer) {
            jsonContainer.innerHTML = `<pre>${JSON.stringify(this.jsonData, null, 1)}</pre>`;
          }
        }
      );
  }

  getManagersData(){
    console.log('clicked me')
    this.managersService.getManagers().subscribe(
        response => {
          this.jsonData = response;
          console.log(this.jsonData);
          let jsonContainer = document.getElementById('json-container');
          if (jsonContainer) {
            jsonContainer.innerHTML = `<pre>${JSON.stringify(this.jsonData, null, 1)}</pre>`;
          }
        }
      );
    }

    getFixturesData(){
    console.log('clicked me')
    this.fixturesService.getFixtures().subscribe(
        response => {
          this.jsonData = response;
          console.log(this.jsonData);
          let jsonContainer = document.getElementById('json-container');
          if (jsonContainer) {
            jsonContainer.innerHTML = `<pre>${JSON.stringify(this.jsonData, null, 1)}</pre>`;
          }
        }
      );
    }

}
