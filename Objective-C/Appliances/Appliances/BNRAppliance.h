//
//  BNRAppliance.h
//  Appliances
//
//  Created by 云海引力002 on 2018/4/13.
//  Copyright © 2018年 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic, copy)NSString *productName;
@property (nonatomic)int voltage;

- (instancetype)initWithProductName:(NSString *)pn;

@end
