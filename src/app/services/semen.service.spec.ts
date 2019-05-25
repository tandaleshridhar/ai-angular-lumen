import { TestBed } from '@angular/core/testing';

import { SemenService } from './semen.service';

describe('SemenService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: SemenService = TestBed.get(SemenService);
    expect(service).toBeTruthy();
  });
});
