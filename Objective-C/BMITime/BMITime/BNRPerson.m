//
//  BNRPerson.m
//  BMITime
//
//  Created by 田宇 on 2018/4/4.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

//- (float)heightInMeters{
//    return _heightInMeters;
//}
//- (void)setHeightInMeters:(float)h{
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos{
//    return _weightInKilos;
//}
//- (void)setWeightInKilos:(int)w{
//    _weightInKilos = w;
//}

- (float)bodyMassIndex{
    //    return _weightInKilos / (_heightInMeters * _heightInMeters);
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

- (void)addYourselfToArray:(NSMutableArray *)theArray{
    [theArray addObject:self];
}
@end
