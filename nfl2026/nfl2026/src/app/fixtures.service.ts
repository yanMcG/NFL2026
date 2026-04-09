import { Injectable } from '@angular/core';
import { Fixture} from './fixture';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class FixturesService {

  fixtureUrl = 'http://localhost:3000/fixtures/'

    constructor(private http: HttpClient) { }

    getFixtures() : Observable<Fixture[]>{
      return this.http.get<Fixture[]>(this.fixtureUrl)
    }

    updateTeamScores(id: number, homeTeamScore: string, awayTeamScore: string): Observable<any> {
      let url = `${this.fixtureUrl}${id}`;
      let body = {
        hteamscore: homeTeamScore,
        ateamscore: awayTeamScore
      };
      return this.http.put(url, body);
    }
}
