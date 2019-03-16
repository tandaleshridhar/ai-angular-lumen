import { Component, OnInit } from '@angular/core';
import { SemenBuyerService } from '../../services/semenbuyer.service';

@Component({
  selector: 'app-semen-buyer-list',
  templateUrl: './semen-buyer-list.component.html',
  styleUrls: ['./semen-buyer-list.component.sass']
})
export class SemenBuyerListComponent implements OnInit {

  constructor(private semenDetails:SemenBuyerService) { }
  public semen: any = [];
  ngOnInit() {
    this.getSemenDetails();
  }

  getSemenDetails(){
    this.semenDetails.getSemenBrand().subscribe(
      semenData => {
        this.semen = semenData;       
      }
    ); 
  }

 
 
}
