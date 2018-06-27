//
//  EntriesListTableViewController.m
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import "EntriesListTableViewController.h"
#import "EntryController.h"
#import "Entry.h"
#import "EntryTableViewCell.h"
#import "EntryDetailViewController.h"



@interface EntriesListTableViewController ()

@end

@implementation EntriesListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[EntryController sharedInstance].entries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EntryTableViewCell *entryCell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
    
    entryCell.entryTitleLabel.text = entry.entryTitle;
    entryCell.entryTimestampLabel.text = entry.entryTimestamp;
    
    // Configure the cell...
    
    return entryCell;
}




/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // guard let segueID =
    if ([segue.identifier isEqualToString:@"toEntryDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
        
        EntryDetailViewController *detailVC = (EntryDetailViewController *) [segue destinationViewController];
        // Set the value of entry on the Detail
        detailVC.entry = entry;
    }
}


@end
