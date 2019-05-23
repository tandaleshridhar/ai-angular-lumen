import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})

export class VisitService {
  private url = 'http://localhost:8080/lumenapi/v1/';
  //private url = 'http://dnyandeep.net/lumenapi/v1/';

  constructor(private http:HttpClient) { }

  getVisits(){
    return this.http.get(this.url + 'visit');
  }

  getVisitDetails(id){
    return this.http.get(this.url + 'visit?id=' + id);
  }  

  addVisit(data){
    return this.http.post(this.url + 'visit', data);
  }

  updateVisit(data){
    return this.http.post(this.url + 'visit', data);
  }

  deleteVisit(id){
    return this.http.delete(this.url + 'visit?id=' + id);
  }

  getVisitByCustomer(customerid)
  {
    return this.http.get(this.url + 'visit?id=' + customerid);
  }
}
