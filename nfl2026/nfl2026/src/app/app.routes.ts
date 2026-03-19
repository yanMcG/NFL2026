import { Routes } from '@angular/router';
import { RoutesComponent } from './routes/routes.component';
import { ManagersComponent } from './managers/managers.component';
import { TeamsComponent } from './teams/teams.component';
import { FixturesComponent } from './fixtures/fixtures.component';

export const routes: Routes = [
    {path : '', component: RoutesComponent, title: 'Home page'},
    {path : '/managers', component: ManagersComponent, title: 'Managers page'},
    {path : '/teams', component: TeamsComponent, title: 'Teams page'},
    {path : '/fixtures', component: FixturesComponent, title: 'Fixtures Page'},
];


