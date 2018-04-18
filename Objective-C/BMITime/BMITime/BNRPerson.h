//
//  BNRPerson.h
//  BMITime
//
//  Created by 田宇 on 2018/4/4.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//{
//    float _heightInMeters;
//    int _weightInKilos;
//}

//- (float)heightInMeters;
//- (void)setHeightInMeters: (float)h;
//
//- (int)weightInKilos;
//- (void)setWeightInKilos: (int)w;

- (float)bodyMassIndex;
- (void)addYourselfToArray: (NSMutableArray *)theArray;
@end
