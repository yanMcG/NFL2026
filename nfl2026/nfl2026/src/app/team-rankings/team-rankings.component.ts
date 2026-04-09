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



  topRandomTeam: number = Math.floor(Math.random() * this.teams.length);
  bottomRandomTeam: number = Math.floor(Math.random() * this.teams.length);

  //im testing to see if i can figure this out go away tommy
  //array of irish teams
  irishTeams = ["Dublin", "Cork", "Galway", "Limerick", "Kerry", "Tipperary", "Waterford", "Clare", "Offaly", "Westmeath"]

   //load constructor of player array data. using service
  constructor(){
    for(let i = 0; i < 10; i++){
      this.topRandomTeam = Math.floor(Math.random() * this.irishTeams.length);
      this.bottomRandomTeam = Math.floor(Math.random() * this.irishTeams.length);
    }

      this.teamService.getTeams().subscribe(
        response => {
          this.teams = response;
        }
      );


  }
// /////////////////////////////////CLICK TOP OR BOTTOM TEAM FUNCTIONS///////////////////////////////////////////////////
  clickedTop(teamName: string){
    if(this.voteRemaining <= 0){
      return;
    }
    console.log("clicked: " + teamName)
    this.state = true
    this.voteRemaining--;
    this.teamService.increaseRank(teamName).subscribe({
      next: () => {
        this.teams.sort(() => Math.random() * this.teams.length);
        this.topRandomTeam = Math.floor(Math.random() * this.teams.length);
        this.bottomRandomTeam = Math.floor(Math.random() * this.teams.length);
      },
    });
  }




  clickedBottom(teamName: string){
    if(this.voteRemaining <= 0){
      return;
    }
    console.log("clicked")
    this.state = false
    this.voteRemaining--;
    this.teamService.increaseRank(teamName).subscribe({
      next: () => {
        this.teams.sort(() => Math.random() * this.teams.length);
        this.bottomRandomTeam = Math.floor(Math.random() * this.teams.length);
        this.topRandomTeam = Math.floor(Math.random() * this.teams.length);
      },
    });
  }

}




