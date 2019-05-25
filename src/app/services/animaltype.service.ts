import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class AnimalTypeService {
  private url = 'http://localhost/lumenapi/v1/';

  constructor(private http:HttpClient) { }

  getAnimalType(){
    return this.http.get(this.url + 'animaltype');
  }

}  