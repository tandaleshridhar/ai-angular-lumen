import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SemenBuyerListComponent } from './semen-buyer-list.component';

describe('SemenBuyerListComponent', () => {
  let component: SemenBuyerListComponent;
  let fixture: ComponentFixture<SemenBuyerListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SemenBuyerListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SemenBuyerListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
