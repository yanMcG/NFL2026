import { Component, inject } from '@angular/core';
import {ReactiveFormsModule, FormControl, FormGroup, FormsModule} from '@angular/forms'

import { Fixture } from '../fixture';
import { FixturesService } from '../fixtures.service';
import { CommonModule } from '@angular/common';


@Component({
  selector: 'app-login',
  standalone: true,
  imports: [ReactiveFormsModule, CommonModule, FormsModule],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {

  fixtures: Fixture[] = [];
  fixturesService = inject(FixturesService);

  isLoggedIn: boolean = true;

  contactForm = new FormGroup({
    email: new FormControl(''),
    password: new FormControl('')
  });

  updateForm = new FormGroup({
    HomeTeamScore: new FormControl(''),
    AwayTeamScore: new FormControl('')
  });

  constructor(){
      this.fixturesService.getFixtures().subscribe(
        response => {
          this.fixtures = response;
        }
      );
    }

  //tommy the password is password, the email is thomas.devine@atu.ie
  login(){
    if(this.contactForm.value.email === "thomas.devine@atu.ie" && this.contactForm.value.password === "password"){
      this.isLoggedIn = true;
    }
    else{
      alert("Incorrect email or password. Please try again.");
    }

  }

  submit(){
    alert(this.contactForm.value.email)
  }

  updateFixture( id: number, awayTeamScore : string, homeTeamScore : string){
    console.log('updating fixture scores')
    console.log('Away Team Score:', awayTeamScore);
    console.log('Home Team Score:', homeTeamScore);

    //update database for fixture tables with new hteam and ateam scores
    this.fixturesService.updateTeamScores(id, homeTeamScore, awayTeamScore).subscribe(
      response => {
        console.log('Away Team, and Home Team scores updated youre welcome tommy');
      },
      error => {
        console.error('feck sake');
      }
    );
  }
}
