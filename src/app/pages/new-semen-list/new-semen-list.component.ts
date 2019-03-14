import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { SemenService } from '../../services/semen.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-new-semen-list',
  templateUrl: './new-semen-list.component.html',
  styleUrls: ['./new-semen-list.component.sass']
})
export class NewSemenListComponent implements OnInit {
  semenForm: FormGroup;
  constructor(private fb:FormBuilder, private semenService:SemenService, private router:Router) { 
    this.semenForm = this.fb.group({
      semenName: ['', Validators.required],
      initialPrice: ['', Validators.required]
    });
  }

  ngOnInit() {
  }

  saveSemen(value){
    const semenData = new FormData();
    semenData.append('semenName',value.semenName);
    semenData.append('initialPrice',value.initialPrice);
    this.semenService.addNewSemen(semenData).subscribe(result => {
      this.router.navigate(['/semen-buyer']);      
    }) 
  }

}
