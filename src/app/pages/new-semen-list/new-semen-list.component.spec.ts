import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NewSemenListComponent } from './new-semen-list.component';

describe('NewSemenListComponent', () => {
  let component: NewSemenListComponent;
  let fixture: ComponentFixture<NewSemenListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NewSemenListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NewSemenListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
