//
//  EntryController.h
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

#pragma Properties
@property (nonatomic, readwrite) NSMutableArray * entries;

#pragma Singleton
+(EntryController *) sharedInstance;


#pragma Crud Methods
-(void) addEntry: (Entry *) entryToAdd;

-(void) deleteEntry: (Entry *) entryToDelete;

-(Entry *) editEntry: (Entry *) entryToEdit;

@end
