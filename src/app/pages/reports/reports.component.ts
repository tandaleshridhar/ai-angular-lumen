import { Component, OnInit } from '@angular/core';
import {CustomerService} from '../../services/customer.service';


@Component({
  selector: 'app-reports',
  templateUrl: './reports.component.html',
  styleUrls: ['./reports.component.sass']
})
export class ReportsComponent implements OnInit {

  public customers: any = [];
  constructor(private customer:CustomerService) { }

  ngOnInit() {
    this.getCustomers();
  }

  getCustomers(){
    this.customer.getCustomers().subscribe(
      customerData => {
        this.customers = customerData;
      }
    )
  }

}
