import { Component, OnInit, ViewChild} from '@angular/core';
import { CustomerService } from '../../services/customer.service';
import { VisitService } from '../../services/visit.service';
import { AnimalTypeService } from '../../services/animaltype.service';


@Component({
  selector: 'app-reports',
  templateUrl: './reports.component.html',
  styleUrls: ['./reports.component.sass']
})
export class ReportsComponent implements OnInit {

  public customers: any = [];
  public animals: any = [];
  public visitsCustomer: any = [];
  customerId:number;
  animalId: any;
  isLinear = false;
  selectedCust = "";
  selectedAnimal="";
  selectedCustomer; 

  displaycolumdetails:string[] = ['id','customer_name','animal_type','semen_name','birth_gender','fee','created_at']; 

  datasource = this.visitsCustomer;

  @ViewChild('visit') Table;
  public datatable:any;

  
  constructor(private customer:CustomerService, private visitservice:VisitService, private animalTypeService: AnimalTypeService) { }

  ngOnInit() {
    this.getCustomers();
    this.getAnimnals();
  }

  getCustomers(){
    this.customer.getCustomers().subscribe(
      customerData => {
        this.customers = customerData;
      }
    )
  }  

  getAnimnals(){
    this.animalTypeService.getAnimalType().subscribe(
      animalData => {
        this.animals = animalData;
      }
    )
  }  

  onValueChange1(event, value)
  {
    this.customerId=event.id;
  }


  onValueChange2(event, value)
  {
    this.animalId=event.id;
  }

  onCustomerClick(customerId, selectedCustomer)
  {
    this.visitservice.getVisitByCustomer({columnName: customerId, columnValue: selectedCustomer}).subscribe(  
      VisitData => {
        this.visitsCustomer = VisitData;
      }
    );    
  }
}
