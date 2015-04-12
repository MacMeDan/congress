//
//  SearchResultsTableViewController.m
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import "SearchResultsTableViewController.h"
#import "ResultsViewController.h"

@interface SearchResultsTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *zipCodeField;

@end

@implementation SearchResultsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ResultsViewController *destinationViewController = segue.destinationViewController;
    
    destinationViewController.zipCode = self.zipCodeField.text;
    
}

@end
