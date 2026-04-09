import { Component } from '@angular/core';
import { LoginComponent } from '../login/login.component';

@Component({
  selector: 'app-logout',
  standalone: true,
  imports: [LoginComponent],
  templateUrl: './logout.component.html',
  styleUrl: './logout.component.css'
})
export class LogoutComponent {

  isLoggedIn: boolean = true;
   logout(){
    this.isLoggedIn = false;
  }

  // sharing components https://youtu.be/omLiQXWuRZE?si=4jTAaol0uEl7oOrP
}
