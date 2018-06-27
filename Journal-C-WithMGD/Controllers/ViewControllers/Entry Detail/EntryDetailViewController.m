//
//  EntryDetailViewController.m
//  Journal-C-WithMGD
//
//  Created by Karl Pfister on 6/27/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

#import "EntryDetailViewController.h"

@interface EntryDetailViewController ()
#pragma Outlets
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextView;
@property (weak, nonatomic) IBOutlet UILabel *entryTitleLabel;
@property (weak, nonatomic) IBOutlet UIButton *clearTextButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;



@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma Actions
- (IBAction)saveButtonTapped:(id)sender {
}

- (IBAction)clearButtonTapped:(id)sender {
}
@end
