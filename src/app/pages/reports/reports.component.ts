import { Component, OnInit, ViewChild} from '@angular/core';
import { CustomerService } from '../../services/customer.service';
import { VisitService } from '../../services/visit.service';


@Component({
  selector: 'app-reports',
  templateUrl: './reports.component.html',
  styleUrls: ['./reports.component.sass']
})
export class ReportsComponent implements OnInit {

  public customers: any = [];
  public visitsCustomer: any = [];
  customerId:number;
  isLinear = false;
  selectedCust = "";
  selectedCustomer; 

  displaycolumdetails:string[] = ['id','customer_name','animal_type','semen_name','birth_gender','fee','created_at']; 

  datasource = this.visitsCustomer;

  @ViewChild('visit') Table;
  public datatable:any;

  
  constructor(private customer:CustomerService, private visitservice:VisitService) { }

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

  onValueChange1(event, value)
  {
    this.customerId=event.id;
  }

  onCustomerClick(selectedCustomer)
  {
    selectedCustomer = this.customerId;
    this.visitservice.getVisitByCustomer(selectedCustomer).subscribe(  
      VisitData => {
        this.visitsCustomer = VisitData;
      }
    );    
  }
}
