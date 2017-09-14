//
//  Sweater.h
//  MemoryManagement
//
//  Created by DDC.Mac2 on 9/13/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#ifndef Sweater_h
#define Sweater_h

#import <Foundation/Foundation.h>

typedef NS_ENUM(unsigned char, SweaterType) {
    Gray, Blue
};

@interface Sweater : NSObject

@property (assign) SweaterType type;

- (id) initWithSweaterType:(SweaterType)type;

@end

#endif /* Sweater_h */

