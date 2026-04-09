import { Component } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';
import { CommonModule } from '@angular/common';
import { LoginComponent } from '../login/login.component';
import { LogoutComponent } from '../logout/logout.component';

@Component({
  selector: 'app-nav',
  standalone: true,
  imports: [RouterLink, RouterOutlet, CommonModule, LoginComponent, LogoutComponent],
  templateUrl: './nav.component.html',
  styleUrl: './nav.component.css'
})
export class NavComponent {
  isLoggedIn: boolean = false;
}
