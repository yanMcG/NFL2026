import { Component, inject } from '@angular/core';
import { Player } from '../player';
import { PlayersService } from '../players.service';
import {CommonModule} from '@angular/common';


@Component({
  selector: 'app-players',
  standalone: true,
  imports: [  CommonModule ],
  templateUrl: './players.component.html',
  styleUrl: './players.component.css'
})
export class PlayersComponent {

  newPlayer : Player = {"id": 0, "name": 'added player name'};
  displayPlayers:boolean = true;
  interfacePlayers : Player[] = []
  players: Player[] = [] 
  playerService = inject(PlayersService);

  //load constructor of player array data. via service
  constructor(){
      this.playerService.getPlayers().subscribe(
        response => {
          this.players = response;
        }
      );
  }

 addPlayer(){
  this.playerService.addPlayer(this.newPlayer).subscribe(
    response => {
      console.log(response)
    }
  )
 }



}
