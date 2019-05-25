import { Component, OnInit } from '@angular/core';
import { SemenBuyerService } from '../../services/semenbuyer.service';
import { Router } from '@angular/router';
import { parseHostBindings } from '@angular/compiler';

@Component({
  selector: 'app-semen-buyer-list',
  templateUrl: './semen-buyer-list.component.html',
  styleUrls: ['./semen-buyer-list.component.sass']
})
export class SemenBuyerListComponent implements OnInit {
 
  constructor(private semenDetails:SemenBuyerService, private router:Router) { 
  }

  public semen: any = [];
  selected = "";
  balance;
  initialPrice;
  unitsTaken;
  productid;
  totalCost;
  totalQuantity;
  otherExpenses;

  ngOnInit() {
    this.getSemenDetails();
  }

  ngDoCheck(): void {
    this.totalQuantity = parseInt(this.balance) + parseInt(this.unitsTaken);
    this.totalCost = this.unitsTaken * this.initialPrice;
  }

  getSemenDetails(){
    this.semenDetails.getSemenBrand().subscribe(
      semenData => {
        this.semen = semenData;       
      }
    ); 
  }

  onValueChange(event, value) {
    this.productid = event.id;
    this.initialPrice = event.initial_price;    
  }

  buySemen(){
    let req = {
      semenInfo: this.productid,
      balance: this.balance,
      initialPrice: this.initialPrice,
      totalCost: this.totalCost,
      totalQuantity: this.totalQuantity,
      otherExpenses: this.otherExpenses      
    }
    this.semenDetails.buySemen(req).subscribe(result => {
         this.router.navigate(['/customer-list']);      
    })  
  }
 
}
