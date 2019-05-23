import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DistrictService {
  private url = 'http://localhost:8080/lumenapi/v1/district';
  //private url = 'http://dnyandeep.net/lumenapi/v1/';

  constructor(private http:HttpClient) { }

  getDistrict(){
    return this.http.get(this.url);
  }

  addDistrict(data){
    return this.http.post(this.url, data);
  }  
}
