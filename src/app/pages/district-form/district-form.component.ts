import { Component, OnInit } from '@angular/core';
import { DistrictService } from '../../services/district.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-district-form',
  templateUrl: './district-form.component.html',
  styleUrls: ['../customer-info/customer-info.component.sass']
})
export class DistrictFormComponent implements OnInit {
  districtForm: FormGroup;
  constructor(private fb:FormBuilder, private district:DistrictService, private router:Router) { 
    this.districtForm = this.fb.group({
      districtName: ['', Validators.required]
    });
  }

  ngOnInit() {
  }

  saveDistrict(value){
    const districtData = new FormData();
    districtData.append('districtName',value.districtName);
    this.district.addDistrict(districtData).subscribe(result => {
      this.router.navigate(['/tehsil-form']);
    })
  }
}
