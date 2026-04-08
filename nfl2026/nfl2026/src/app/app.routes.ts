import { Routes } from '@angular/router';
import { RoutesComponent } from './routes/routes.component';
import { ManagersComponent } from './managers/managers.component';
import { TeamsComponent } from './teams/teams.component';
import { FixturesComponent } from './fixtures/fixtures.component';
import { TeamRankingsComponent } from './team-rankings/team-rankings.component';
import { ScoringStatsComponent } from './scoring-stats/scoring-stats.component';
import { ScoringStats2Component } from './scoring-stats2/scoring-stats2.component';
import { ScoringChartComponent } from './scoring-chart/scoring-chart.component';
import { LoginComponent } from './login/login.component';
import { ResultsComponent } from './results/results.component';

export const routes: Routes = [
    {path : '', component: RoutesComponent, title: 'home'},
    {path : 'managers', component: ManagersComponent, title: 'managers'},
    {path : 'teams', component: TeamsComponent, title: 'teams'},
    {path : 'fixtures', component: FixturesComponent, title: 'fixtures'},
    {path : 'team-rankings', component: TeamRankingsComponent, title: 'team-rankings'},
    {path : 'scoring-stats', component: ScoringStatsComponent, title: 'scoring-stats'},
    {path : 'scoring-stats-ii', component: ScoringStats2Component, title: 'scoring-stats II'},
    {path : 'scoring-chart', component: ScoringChartComponent, title: 'scoring-chart'},
    {path : 'login', component: LoginComponent, title: 'login'},
    {path : 'results', component: ResultsComponent, title: 'results'}
];


