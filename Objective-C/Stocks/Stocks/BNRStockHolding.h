//
//  BNRStockHolding.h
//  Stocks
//
//  Created by 田宇 on 2018/4/2.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (void)purchaseSharePrice: (float)pur;
- (float)getPurchaseSharePrice;

- (void)currentSharePrice: (float)cur;
- (float)getCurrentSharePrice;

- (void)numberOfShares: (int)num;
- (int)getNumberOfShares;

- (float)costInDollars;
- (float)valueInDollars;
@end
