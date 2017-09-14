//
//  Sweater.m
//  MemoryManagement
//
//  Created by DDC.Mac2 on 9/13/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "Sweater.h"

@implementation Sweater

- (id) initWithSweaterType:(SweaterType)type
{
    self = [super init];
    
    if (self) {
        _type = type;
    }
    
    return self;
}

- (NSString *)description {
    switch (_type) {
        case Blue:
            return @"Blue Sweater";
            break;
        case Gray:
            return @"Gray Sweater";
    }
}

- (void)dealloc {
    NSLog(@"%s %@ deallocated",__PRETTY_FUNCTION__,self);
    [super dealloc];
}

@end
