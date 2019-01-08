import { Component, OnInit, ViewChild } from '@angular/core';
import { CustomerService } from "../../services/customer.service";
import { Router } from '@angular/router';
declare var $;

@Component({
  selector: 'app-customer-list',
  templateUrl: './customer-list.component.html',
  styleUrls: ['./customer-list.component.sass']
})
export class CustomerListComponent implements OnInit {
  public customers: any = [];
  @ViewChild('customersTable') Table;
  public dataTable:any;
  constructor(private customerService:CustomerService, private router: Router) { }

  ngOnInit() {
    this.loadCustomers();
  }

  loadCustomers(){
    this.customerService.getCustomers().subscribe(
      customersData => {
        this.customers = customersData;
        this.dataTable = $(this.Table.nativeElement);
        setTimeout(()=>{this.dataTable.DataTable();});
      }
    );
  }

  getNavigation(link,id){
    if(id === ''){
      this.router.navigate([link]);
    }else{
      this.router.navigate([link+'/'+id]);
    }
  }

}
