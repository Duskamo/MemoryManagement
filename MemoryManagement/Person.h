//
//  Person.h
//  MemoryManagement
//
//  Created by DDC.Mac2 on 9/13/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#ifndef Person_h
#define Person_h

#import <Foundation/Foundation.h>
#import "Sweater.h"

@interface Person : NSObject

@property (nonatomic, retain) Sweater *sweater;
@property (nonatomic, retain) NSString *name;

- (id)initWithName:(NSString *)name;
- (NSString *)quote;

@end

#endif /* Person_h */
