//
//  Entry.m
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import "Entry.h"

@implementation Entry

#pragma Implementation of Initalizer
- (instancetype)initWithTitle:(NSString *)title timestamp:(NSDate *)timestamp bodyText:(NSString *)bodyText
{
    // init this instance
    self = [super init];
    // check that it exists
    if (self) {
        // add the values
        self.entryTitle = title;
        // ^swifty
        _entryBodyText = bodyText;
        // Obj-c(y)
        _entryTimestamp = [NSDate date];
    }
    // return the instance
    return self;
}

#pragma Party time
@end
