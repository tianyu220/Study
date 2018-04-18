//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by 云海引力002 on 2018/4/13.
//  Copyright © 2018年 Home. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly)NSSet *ownerNames;

- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end
