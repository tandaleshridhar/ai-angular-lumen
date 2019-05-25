import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SemenListComponent } from './semen-list.component';

describe('SemenListComponent', () => {
  let component: SemenListComponent;
  let fixture: ComponentFixture<SemenListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SemenListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SemenListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
