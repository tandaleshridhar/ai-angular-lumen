import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {DemoMaterialModule} from '../material-module';
import {FlexLayoutModule} from '@angular/flex-layout';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from '../app/pages/login/login.component';
import { HomeComponent } from './pages/home/home.component';
import { CustomerInfoComponent } from './pages/customer-info/customer-info.component';
import { SemenInfoComponent } from './pages/semen-info/semen-info.component';
import { VisitingInfoComponent } from './pages/visiting-info/visiting-info.component';
import { ReportsComponent } from './pages/reports/reports.component';
import { NewUserComponent } from './pages/new-user/new-user.component';
import { DistrictFormComponent } from './pages/district-form/district-form.component';
import { TehsilFormComponent } from './pages/tehsil-form/tehsil-form.component';
import { TownFormComponent } from './pages/town-form/town-form.component';
import { CustomerListComponent } from './pages/customer-list/customer-list.component';
import { SemenBuyerListComponent } from './pages/semen-buyer-list/semen-buyer-list.component';
import { NewSemenListComponent } from './pages/new-semen-list/new-semen-list.component';
import { SemenListComponent } from './pages/semen-list/semen-list.component';
import { UserProfileComponent } from './pages/user-profile/user-profile.component';
import { FileSelectDirective} from 'ng2-file-upload';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    CustomerInfoComponent,
    SemenInfoComponent,
    VisitingInfoComponent,
    ReportsComponent,
    FileSelectDirective,
    NewUserComponent,
    DistrictFormComponent,
    TehsilFormComponent,
    TownFormComponent,
    CustomerListComponent,
    SemenBuyerListComponent,
    NewSemenListComponent,
    SemenListComponent,
    UserProfileComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,  
    AppRoutingModule,
    BrowserAnimationsModule,
    DemoMaterialModule,
    FlexLayoutModule, 
    FormsModule,
    ReactiveFormsModule
   ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
