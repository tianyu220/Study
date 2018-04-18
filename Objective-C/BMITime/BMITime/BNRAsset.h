//
//  BNRAsset.h
//  BMITime
//
//  Created by 田宇 on 2018/4/5.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import <Foundation/Foundation.h>
@class  BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *lable;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic) BNREmployee *holder;

@end
