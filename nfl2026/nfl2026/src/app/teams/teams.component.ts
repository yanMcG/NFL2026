import { Component, inject } from '@angular/core';
import { Team } from '../player';
import { PlayersService } from '../players.service';
import {CommonModule} from '@angular/common';


@Component({
  selector: 'app-teams',
  standalone: true,
  imports: [  CommonModule ],
  templateUrl: './teams.component.html',
  styleUrl: './teams.component.css'
})
export class TeamsComponent {

  displayPlayers:boolean = true;
  interfacePlayers : Team[] = []
  teams: Team[] = [] 
  playerService = inject(PlayersService);

  //load constructor of player array data. via service
  constructor(){
      this.playerService.getTeams().subscribe(
        response => {
          this.teams = response;
        }
      );
  }


}
