import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class RecordingService {
  private url = 'http://localhost:8080/lumenapi/v1/record';
  //private url = 'http://dnyandeep.net/lumenapi/v1/';

  constructor(private http:HttpClient) { }

 saveRecording(data){
    return this.http.post(this.url, data);
  }  
}
