import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})
export class AppComponent {
  title = 'AI मध्ये आपले स्वागत आहे';
  fillerNav = [
    {link: '/new-semen', label: 'नवीन सिमेन ब्रँड जतन करा', icon: 'offline_bolt'},
    {link: '/semen-buyer', label: 'सिमेन खरेदी करा', icon: 'info'},
    {link: '/semen-info', label: 'सिमेन खरेदीदार यादी', icon: 'add_shopping_cart'},
    {link: '/customer-info', label: 'नवीन ग्राहक ', icon: 'event_note'},    
    {link: '/visiting-info', label: 'भेटीची माहिती', icon: 'perm_contact_calendar'},
    {link: '/reports', label: 'अहवाल', icon: 'report'},
    {link: '/new-user', label: 'नवीन वापरकर्ता नोंदणी', icon: 'verified_user'},
    {link: '/district', label: 'जिल्हा फॉर्म', icon: 'turned_in_not'},
    {link: '/customer-list', label: 'ग्राहक यादी', icon: 'vertical_split'},
    {link: '/tehsil-form', label: 'तालुका फॉर्म', icon: 'work_outline'},
    {link: '/town-form', label: 'शहर / गाव फॉर्म', icon: 'line_weight'},    
    {link: '/semen-list', label: 'सिमेन यादी', icon: 'dashboard'}
  ];
  constructor(public router: Router) { }
}
