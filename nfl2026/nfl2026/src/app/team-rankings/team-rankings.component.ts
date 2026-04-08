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
  voteRemaining = 5;
  state: boolean = false;

  clickedTop(){
    console.log("clicked")
    this.state = true
    this.voteRemaining--;
  }

  clickedBottom(){
    console.log("clicked")
    this.state = false
    this.voteRemaining--;
  }

}




