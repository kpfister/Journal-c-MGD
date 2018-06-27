//
//  EntryDetailViewController.h
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

@interface EntryDetailViewController : UIViewController

#pragma Properties

@property (nonatomic, readwrite) Entry *entry;


@end
