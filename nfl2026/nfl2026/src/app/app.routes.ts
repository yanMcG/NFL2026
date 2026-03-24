import { Routes } from '@angular/router';
import { RoutesComponent } from './routes/routes.component';
import { ManagersComponent } from './managers/managers.component';
import { TeamsComponent } from './teams/teams.component';
import { FixturesComponent } from './fixtures/fixtures.component';

export const routes: Routes = [
    {path : '', component: RoutesComponent, title: 'home'},
    {path : 'managers', component: ManagersComponent, title: 'managers'},
    {path : 'teams', component: TeamsComponent, title: 'teams'},
    {path : 'fixtures', component: FixturesComponent, title: 'fixtures'},
];


