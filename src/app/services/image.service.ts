import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class ImageService {
  public url = 'http://localhost/lumenapi/v1/img';

  constructor(private http:HttpClient) { }

  saveImage(data){
    return this.http.post(this.url, data);
  }  
}
