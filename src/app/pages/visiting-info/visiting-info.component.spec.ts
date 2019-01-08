import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VisitingInfoComponent } from './visiting-info.component';

describe('VisitingInfoComponent', () => {
  let component: VisitingInfoComponent;
  let fixture: ComponentFixture<VisitingInfoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VisitingInfoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VisitingInfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
