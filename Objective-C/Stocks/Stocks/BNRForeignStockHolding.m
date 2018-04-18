//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by 田宇 on 2018/4/5.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars{
    return [super costInDollars] * _conversionRate;
}

- (float)valueInDollars{
    return [super valueInDollars] * _conversionRate;
}

@end
