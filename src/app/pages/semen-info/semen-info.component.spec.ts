import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SemenInfoComponent } from './semen-info.component';

describe('SemenInfoComponent', () => {
  let component: SemenInfoComponent;
  let fixture: ComponentFixture<SemenInfoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SemenInfoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SemenInfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
