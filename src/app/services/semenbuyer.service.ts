import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class SemenBuyerService {
  private url = 'http://localhost:8080/angular/ai/ai_api/semenBuyer/';

  constructor(private http:HttpClient) { }

  getSemenBrand(){
    return this.http.get(this.url + 'getSemenBrand.php');
  }

}  