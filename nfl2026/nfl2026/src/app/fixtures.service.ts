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
}
