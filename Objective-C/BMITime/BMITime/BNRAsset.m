//
//  BNRAsset.m
//  BMITime
//
//  Created by 田宇 on 2018/4/5.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
//    return [NSString stringWithFormat:@"<%@, $%u>", self.lable, self.resaleValue];
    //holder是否为非nil
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.lable, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d, assigned>", self.lable, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
