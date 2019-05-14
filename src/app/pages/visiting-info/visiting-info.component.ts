import { Component, OnInit } from '@angular/core';
import { CustomerService } from '../../services/customer.service';
import { SemenService } from '../../services/semen.service';
import { AnimalTypeService } from '../../services/animaltype.service';
import { VisitService } from '../../services/visit.service';
import { FileUploader } from 'ng2-file-upload/ng2-file-upload';
import { Router } from '@angular/router';
import * as moment from 'moment';

const UploadURL = 'http://localhost:8080/lumenapi/v1/img';
const UploadURL1 = 'http://localhost:8080/lumenapi/v1/record';

@Component({
  selector: 'app-visiting-info',
  templateUrl: './visiting-info.component.html',
  styleUrls: ['./visiting-info.component.sass']
})
export class VisitingInfoComponent implements OnInit {
  public semens: any = [];
  public animals: any = [];
  public customers: any = [];

  public uploader:FileUploader = new FileUploader({url: UploadURL, itemAlias: 'avatar'});

  public uploader1:FileUploader = new FileUploader({url: UploadURL1, itemAlias: 'recording'});

  selectedCust = "";
  selectedAnimal = "";
  selectedSemen = "";
  customerId:number;
  animalId:number;
  semenId:number;
  customerName:string;
  animalName:string;
  semenName:string;  
  tag:number; 
  health:string;
  desc:string;
  lastInsertId;
  hitDate;
  pdDate;
  deliveryDate;
  birthGender;
  report;
  fee;
  otherFee;
  response;
  
  constructor(private customer:CustomerService, private semen:SemenService,
    private animalType:AnimalTypeService, private router:Router, 
    private visitService:VisitService) {}
  
  ngOnInit() {
    this.getSemenBrand();
    this.getAnimalType();
    this.getCustomers(); 
    this.uploader.onAfterAddingFile = (file)=> { file.withCredentials =false; };

    this.uploader.onCompleteItem = (item:any, response:any, status:any) => {
      console.log("FileUpload:uploaded:", item, status, response);
    };

    this.uploader1.onCompleteItem = (item:any, response:any, status:any) => {
      console.log("FileUpload:uploaded:", item, status, response);
    };
  }

  
  onValueChange1(event, value) {
    
    this.customerName = event.first_name;
    this.customerId = event.id;        
  }

  onValueChange2(event, value) {
    this.animalId = event;        
  }

  onValueChange3(event, value) {
    this.semenName = event.name; 
    this.semenId = event;        
  }

  getSemenBrand(){
    this.semen.getSemenDetails().subscribe(
      semenData => {
        this.semens = semenData;       
      }
    ); 
  }

  getAnimalType(){
    this.animalType.getAnimalType().subscribe(
      animalData => {
        this.animals = animalData;
      }
    )
  }

  getCustomers(){
    this.customer.getCustomers().subscribe(
      customerData => {
        this.customers = customerData;
      }
    )
  }

  add21Days(){
    this.hitDate = moment().add(21, 'days').calendar();
  }

  add75Days(){
    this.pdDate = moment().add(75, 'days').calendar();
  }

  add9Month(){
    this.deliveryDate = moment().add(279, 'days').calendar();
  }
  
  saveVisit(){
    debugger;
    let req = {
    customerId: this.customerId,
    semenId: this.semenId,
    customerName: this.customerName,
    animalType: this.animalName,
    tagNo: this.tag,
    animalDesc: this.desc,
    animalHealth: this.health,
    semenName: this.semenName,
    hitDate: this.hitDate,
    deliveryDate: this.deliveryDate,
    pdDate: this.pdDate,
    birthGender: this.birthGender,
    fee: this.fee,
    otherFee: this.otherFee
    }
    this.visitService.addVisit(req).subscribe(result => {
      this.router.navigate(['/customer-list']);      
    })  
  }
}
