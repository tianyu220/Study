//
//  BNRLogger.h
//  Callbacks
//
//  Created by 云海引力002 on 2018/4/12.
//  Copyright © 2018年 home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>{
    NSMutableData *_inconmingData;
}

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTime: (NSTimer *)t;
- (void)zoneChange: (NSNotification *)note;
@end
