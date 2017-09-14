//
//  Person.m
//  MemoryManagement
//
//  Created by DDC.Mac2 on 9/13/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        _name = [name retain];
        _sweater = nil;
    }
    
    return self;
}

- (NSString *)quote
{
    return [[[NSString alloc] initWithFormat:@"%@ says: Gimme my sweater back!", _name] autorelease];
}

- (NSString *)description {
    if (_sweater) {
        return [NSString stringWithFormat:@"%@ (wearing %@)", _name, _sweater];
    } else {
        return _name;
    }
}

- (void)dealloc {
    NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
    [_sweater release];
    _sweater = nil;
    [_name release];
    _name = nil;
    [super dealloc];
}

@end
