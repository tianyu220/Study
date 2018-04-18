//
//  BNREmployee.h
//  BMITime
//
//  Created by 田宇 on 2018/4/4.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

@property (nonatomic) NSString *lastName;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray *children;

@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;
- (void)addAssets:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
