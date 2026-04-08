import { Component , inject} from '@angular/core';
import {ReactiveFormsModule, FormControl, FormGroup} from '@angular/forms'
import { HttpClient } from '@angular/common/http';
import { TeamsService } from '../teams.service';
import { Team } from '../team';
import { CommonModule } from '@angular/common';



@Component({
  selector: 'app-team-rankings',
  standalone: true,
  imports: [ReactiveFormsModule, CommonModule],
  templateUrl: './team-rankings.component.html',
  styleUrl: './team-rankings.component.css'
})
export class TeamRankingsComponent {
  teams: Team[] = [];
  teamService = inject(TeamsService);
  voteRemaining = 10;
  state: boolean = false;

  //im testing to see if i can figure this out go away tommy
  //array of irish teams
  irishTeams = ["Dublin", "Cork", "Galway", "Limerick", "Kerry", "Tipperary", "Waterford", "Clare", "Offaly", "Westmeath"]

   //load constructor of player array data. using service
  constructor(){
      this.teamService.getTeams().subscribe(
        response => {
          this.teams = response;
        }
      );
  }

  clickedTop(){
    if(this.voteRemaining <= 0){
      return;
    }
    console.log("clicked")
    this.state = true
    this.voteRemaining--;
    this.irishTeams.sort(() => Math.random() - 0.5);
    this.teams.sort(() => Math.random() - 0.5);
  }

  clickedBottom(){
    if(this.voteRemaining <= 0){
      return;
    }
    console.log("clicked")
    this.state = false
    this.voteRemaining--;
    this.teams.sort(() => Math.random() - 0.5);
  }

}




