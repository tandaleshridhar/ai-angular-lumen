import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class TalukaService {
  private url = 'http://localhost:8080/angular/ai/ai_api/taluka/';

  constructor(private http:HttpClient) { }

  getTaluka(){
    return this.http.get(this.url + 'view.php');
  }

  addTaluka(data){
    return this.http.post(this.url + 'create.php', data);
  }  
}
