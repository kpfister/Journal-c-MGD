//
//  EntryController.h
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EntryController : NSObject

#pragma Properties
// Source of truth

@property (nonatomic, readwrite) NSMutableArray *entries;

#pragma Methods
// Crud
-(void) addEntry: (Entry *)entry;


#pragma Singleton

+(EntryController *) sharedInstance;

//-(instancetype)init;

@end
