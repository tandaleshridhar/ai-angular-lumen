import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';


@Injectable({
  providedIn: 'root'
})
export class CustomerService {
  //private url = 'http://localhost:8080/angular/ai/ai_api/customer/';
  private url = 'http://localhost:8080/lumenapi/v1/';

  constructor(private http:HttpClient) { }

  getCustomers(){
    //return this.http.get(this.url + 'view.php');
    return this.http.get(this.url + 'customer');
  }

  getCustomerDetails(id){
    return this.http.get(this.url + 'customer?id=' + id);
  }  

  createCustomer(data){
    return this.http.post(this.url + 'customer', data);
  }

  updateCustomer(data){
    return this.http.post(this.url + 'customer', data);
  }

  deleteCustomer(id){
    return this.http.delete(this.url + 'customer?id=' + id);
  }
}
