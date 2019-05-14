import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class SemenService {
  //private url = 'http://localhost:8080/angular/ai/ai_api/semen/';
  private url = 'http://localhost:8080/lumenapi/v1/';


  constructor(private http:HttpClient) { }

  getSemenDetails(){
    return this.http.get(this.url + 'semen');
  }

  getSemenDetail(id){
    return this.http.get(this.url + 'semen?id=', id);
  }  

  addNewSemen(data){
    return this.http.post(this.url + 'semen', data);
  }

  updateSemen(data){
    return this.http.post(this.url + 'semen', data);
  }

  deleteSemen(id){
    return this.http.delete(this.url + 'semen?id=', id);
  }
}
