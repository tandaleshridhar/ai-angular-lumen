import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class TalukaService {
  private url = 'http://localhost:8080/lumenapi/v1/';
  //private url = 'http://dnyandeep.net/lumenapi/v1/';

  constructor(private http:HttpClient) { }

  getTaluka(){
    return this.http.get(this.url + 'taluka');
  }

  addTaluka(data){
    return this.http.post(this.url + 'taluka', data);
  }  
}
