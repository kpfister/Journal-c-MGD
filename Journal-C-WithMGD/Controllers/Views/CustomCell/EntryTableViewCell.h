//
//  EntryTableViewCell.h
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EntryTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *entryTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *entryTimestampLabel;

@end
