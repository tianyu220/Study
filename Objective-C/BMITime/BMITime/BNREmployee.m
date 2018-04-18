//
//  BNREmployee.m
//  BMITime
//
//  Created by 田宇 on 2018/4/4.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//类扩展
@interface BNREmployee()

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

- (void)setAssets:(NSArray *)a{
    _assets = [a mutableCopy];
}
- (NSArray *)assets{
    return [_assets copy];
}
- (void)addAssets:(BNRAsset *)a{
    if (!_assets) {
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}
- (unsigned int)valueOfAssets{
    //累加物品的转售价值
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}


- (double)yearsOfEmployment{
    //是否拥有一个非nil的hireDate?
    if (self.hireDate) {
        //NSTimeInterval是double类型
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; //每年的秒数
    }else{
        return 0;
    }
}

- (float)bodyMassIndex{
    double normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
//    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

@end
