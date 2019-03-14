import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class SemenService {
  private url = 'http://localhost:8080/angular/ai/ai_api/semen/';

  constructor(private http:HttpClient) { }

  getSemenDetails(){
    return this.http.get(this.url + 'view.php');
  }

  getSemenDetail(id){
    return this.http.get(this.url + 'view_one.php?id=' + id);
  }  

  addNewSemen(data){
    return this.http.post(this.url + 'create.php', data);
  }

  updateSemen(data){
    return this.http.post(this.url + 'update.php', data);
  }

  deleteSemen(id){
    return this.http.delete(this.url + 'delete.php?id=' + id);
  }
}
