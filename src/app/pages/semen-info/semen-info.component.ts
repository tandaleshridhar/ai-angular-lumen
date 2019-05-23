import { Component, OnInit,ViewChild } from '@angular/core';
import {SemenBuyerListService} from '../../services/semen-buyer-list.service';
import {Router} from '@angular/router';
declare var $;


@Component({
  selector: 'app-semen-info',
  templateUrl: './semen-info.component.html',
  styleUrls: ['./semen-info.component.sass']
})
export class SemenInfoComponent implements OnInit {

  public semenbuyers:any=[];
  displaycolumdetails:String[]=['id','balance','total_amount','total_quantity'];
  datasource=this.semenbuyers;


  @ViewChild('semen_buyer') Table;

  public dataTable:any;

  constructor(private semenbuyerservice:SemenBuyerListService,router:Router) { }

  ngOnInit() {

    this.loadsemenbuylist()
  }

  loadsemenbuylist()
  {
    this.semenbuyerservice.getSemenBuyers().subscribe(
      customersData => {
        this.semenbuyers = customersData;       
      }
    );
  }

}
