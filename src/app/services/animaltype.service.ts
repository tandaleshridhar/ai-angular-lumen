import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class AnimalTypeService {
  //private url = 'localhost:8080/Angular/ai/ai_api/semenBuyer/';
  private url = 'http://localhost:8080/lumenapi/v1/';

  constructor(private http:HttpClient) { }

  getAnimalType(){
    return this.http.get(this.url + 'animaltype');
  }

}  