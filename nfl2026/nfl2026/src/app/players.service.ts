//can inject this service in other components too
import { Injectable } from '@angular/core';
import { Team } from './team';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Player } from './player';
import { Manager } from './manager';

@Injectable({
  providedIn: 'root'
})
export class PlayersService {
  playerUrl = 'http://localhost:3000/players/'

  constructor(private http: HttpClient) { }

  //return player array data
  getPlayers() : Observable<Player[]>{
  return this.http.get<Player[]>(this.playerUrl)
  }

  
}
