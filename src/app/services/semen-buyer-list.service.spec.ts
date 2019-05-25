import { TestBed } from '@angular/core/testing';

import { SemenBuyerListService } from './semen-buyer-list.service';

describe('SemenBuyerListService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: SemenBuyerListService = TestBed.get(SemenBuyerListService);
    expect(service).toBeTruthy();
  });
});
