//can inject this service in other components too
import { Injectable } from '@angular/core';
import { Team } from './player';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PlayersService {
  url = 'http://localhost:3000/teams/'


  
  constructor(private http: HttpClient) { }

  //return player array data
  getPlayers() : Observable<Team[]>{
  return this.http.get<Team[]>(this.url)}

  getTeams() : Observable<Team[]>{
    return this.http.get<Team[]>(this.url)
  }
  
}
