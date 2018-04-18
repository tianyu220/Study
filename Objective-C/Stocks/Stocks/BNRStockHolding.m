//
//  BNRStockHolding.m
//  Stocks
//
//  Created by 田宇 on 2018/4/2.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (void)purchaseSharePrice:(float)pur{
    _purchaseSharePrice = pur;
}
- (float)getPurchaseSharePrice{
    return _purchaseSharePrice;
}

- (void)currentSharePrice:(float)cur{
    _currentSharePrice = cur;
}
- (float)getCurrentSharePrice{
    return _currentSharePrice;
}

- (void)numberOfShares:(int)num{
    _numberOfShares = num;
}
- (int)getNumberOfShares{
    return _numberOfShares;
}

- (float)costInDollars{
    return [self getPurchaseSharePrice] * [self getNumberOfShares];
}
- (float)valueInDollars{
    return [self getCurrentSharePrice] * [self getNumberOfShares];
}

@end
