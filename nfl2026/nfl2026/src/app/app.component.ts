import { Component } from '@angular/core';
import { RouterOutlet, RouterLink } from '@angular/router';
import { NavComponent } from './nav/nav.component';
import { FixturesComponent } from './fixtures/fixtures.component';
import {RoutesComponent}from './routes/routes.component';
import { ManagersComponent } from './managers/managers.component';
import { TeamsComponent } from './teams/teams.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, NavComponent,
     FixturesComponent, RoutesComponent, 
     ManagersComponent, TeamsComponent, RouterLink],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'nfl2026';
}
