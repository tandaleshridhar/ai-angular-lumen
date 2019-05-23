import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class SemenBuyerService {
  private url = 'http://localhost:8080/lumenapi/v1/';
  //private url = 'http://dnyandeep.net/lumenapi/v1/';

  constructor(private http:HttpClient) { }

  getSemenBrand(){
    return this.http.get(this.url + 'semen');
  }

  getBalance(){
    return this.http.get(this.url + 'semenbuyer');
  }

  buySemen(data){
    return this.http.post(this.url + 'semenbuyer', data);
  }

}  