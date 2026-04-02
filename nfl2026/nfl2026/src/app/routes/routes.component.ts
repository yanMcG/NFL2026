import { Component, inject } from '@angular/core';
import { PlayersService } from '../players.service';
import { Team } from '../team';

@Component({
  selector: 'app-routes',
  standalone: true,
  imports: [],
  templateUrl: './routes.component.html',
  styleUrl: './routes.component.css'
})
export class RoutesComponent {

  interfacePlayers : Team[] = []
    teams: Team[] = [] 
    playerService = inject(PlayersService);

  getTeamsData(){
    console.log('clicked me')
    this.playerService.getTeams().subscribe(
        response => {
          this.teams = response;
          console.log(response);
        }
      );
    
  }

}
