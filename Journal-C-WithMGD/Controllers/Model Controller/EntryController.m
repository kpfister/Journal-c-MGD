//
//  EntryController.m
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import "EntryController.h"

@implementation EntryController

#pragma Singleton
+ (EntryController *)sharedInstance
{
    // Give my sharedInstance a default vaule of nil
    static EntryController *sharedInstance = nil;
    // I only want ONE instance of my EntryController, so I'll dispatch it once and keep track of it with my token
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // Allocate and init my EntryController, set the value of sharedInstance to be the EntryControler instance I just created.
    #pragma + is a class method. - is an instance method. 'new' is a class method.
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}

#pragma Crud Methods
- (void)addEntry:(Entry *)entryToAdd
{
    // get my source of truth and add my entry
    [self.entries addObject:entryToAdd];
    
}
- (void)deleteEntry:(Entry *)entryToDelete
{
    [self.entries removeObject:entryToDelete];
}

#pragma TODO - Edit
//- (Entry *)editEntry:(Entry *)entryToEdit
//{
//
//}

    


@end
