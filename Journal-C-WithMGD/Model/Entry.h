//
//  Entry.h
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

#pragma Properties
@property (copy, nonatomic) NSString *entryTitle;

@property (copy, nonatomic) NSDate *entryTimestamp;

@property (copy, nonatomic) NSString *entryBodyText;

// Init this class - This will make this method public
#pragma Initializer
-(instancetype)initWithTitle: (NSString *) title
                   timestamp: (NSDate *) timestamp;
//                    bodyText: (NSString *) bodyText;


@end
