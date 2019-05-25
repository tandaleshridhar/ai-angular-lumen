import { Component, OnInit } from '@angular/core';
import { TalukaService } from '../../services/taluka.service';
import { DistrictService } from '../../services/district.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-tehsil-form',
  templateUrl: './tehsil-form.component.html',
  styleUrls: ['../customer-info/customer-info.component.sass']
})
export class TehsilFormComponent implements OnInit {
  talukaForm: FormGroup;
  public districts: any = [];

  constructor(private fb:FormBuilder, private district:DistrictService, private taluka:TalukaService, private router:Router) {
    this.talukaForm = this.fb.group({
      district_id: ['', Validators.required],
      talukaName: ['', Validators.required]
    });
   }

   ngOnInit() {
     this.getDistrict();     
   }
 
   getDistrict(){
     this.district.getDistrict().subscribe(
       districtData => {
         this.districts = districtData;       
       }
     ); 
   }

  saveTaluka(value){
    const talukaData = new FormData();
    talukaData.append('district_id', value.district_id);
    talukaData.append('talukaName', value.talukaName);
    this.taluka.addTaluka(talukaData).subscribe(result => {
      this.router.navigate(['/customer-info']);
    })
  }

}
