import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { CustomerService } from '../../services/customer.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-customer-info',
  templateUrl: './customer-info.component.html',
  styleUrls: ['./customer-info.component.sass']
})
export class CustomerInfoComponent implements OnInit {
  customerForm: FormGroup;
  constructor(private fb:FormBuilder, private custService:CustomerService, private router:Router) {
    this.customerForm = this.fb.group({
      firstName: ['', Validators.required],
      lastName: ['', Validators.required],
      village: ['', Validators.required],
      address: ['', Validators.required],
      taluka: ['', Validators.required],
      mobile: ['', Validators.required]
    });
   }

  ngOnInit() {
  }

  saveCustomer(value){
    const customerData = new FormData();
    customerData.append('firstName',value.firstName);
    customerData.append('lastName',value.lastName);
    customerData.append('village',value.village);
    customerData.append('address',value.address);
    customerData.append('taluka',value.taluka);
    customerData.append('mobile',value.mobile);
    this.custService.createCustomer(customerData).subscribe(result => {
      this.router.navigate(['/customer-list']);      
    })  
  }
}
