import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TehsilFormComponent } from './tehsil-form.component';

describe('TehsilFormComponent', () => {
  let component: TehsilFormComponent;
  let fixture: ComponentFixture<TehsilFormComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TehsilFormComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TehsilFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
