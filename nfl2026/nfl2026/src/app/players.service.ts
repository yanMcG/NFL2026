//can inject this service in other components too
import { Injectable } from '@angular/core';
import { Player } from './player';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PlayersService {
  url = 'http://localhost:3000/teams/'


  
  constructor(private http: HttpClient) { }

  //return player array data
  getPlayers() : Observable<Player[]>{
  return this.http.get<Player[]>(this.url)}
  
  addPlayer(player:Player){
    return this.http.post<Player>(this.url, player);
  }
}
