import { Component, inject } from '@angular/core';
import { Team } from '../team';
import { TeamsService } from '../teams.service';
import {CommonModule} from '@angular/common';


@Component({
  selector: 'app-teams',
  standalone: true,
  imports: [  CommonModule ],
  templateUrl: './teams.component.html',
  styleUrl: './teams.component.css'
})
export class TeamsComponent {

  // displayPlayers:boolean = true;
  // interfacePlayers : Team[] = []
  teams: Team[] = [];
  teamService = inject(TeamsService);

  //load constructor of player array data. using service
  constructor(){
      this.teamService.getTeams().subscribe(
        response => {
          this.teams = response;
        }
      );
  }


}
