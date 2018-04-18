//
//  BNRAppliance.m
//  Appliances
//
//  Created by 云海引力002 on 2018/4/13.
//  Copyright © 2018年 Home. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)init
{
    return [self initWithProductName:@"Unknow"];
}

- (instancetype)initWithProductName:(NSString *)pn{
    self = [super init];
    if (self) {
        //为_voltage赋初始值
        _voltage = 120;
        //为_productName赋初始值
        _productName = [pn copy];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end
