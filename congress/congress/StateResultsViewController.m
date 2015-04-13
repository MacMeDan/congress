//
//  StateResultsViewController.m
//  congress
//
//  Created by P Leonard on 4/12/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import "StateResultsViewController.h"
#import "RepresentitiveSearchController.h"
#import "congressmenDetailViewController.h"
#import "StatePicker.h"


@interface StateResultsViewController () <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) RepresentitiveSearchController *searchController;

@property (strong, nonatomic) Representative *selectedRep;

@property (strong, nonatomic) NSArray *representatives;

@end

@implementation StateResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set the title of the view to the zip code that was entered into the search feild. Giving the user context of what the results relate too.
    self.title = self.state;
    NSLog(@"%@", self.state);
    
    self.searchController = [RepresentitiveSearchController new];
    
    [self.searchController representativesByState:self.state completion:^(NSArray *reps) {
        self.representatives = reps;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"repCell"];
    
    Representative *rep = self.representatives[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", rep.name];
    cell.detailTextLabel.text = rep.address;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.representatives.count;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
       
    congressmenDetailViewController *destinationViewController = segue.destinationViewController;
    
    Representative *sendRep;
    
    for (sendRep in self.representatives) {
        if ([[sendRep valueForKey:@"name"]isEqualToString:[sender valueForKey:@"text"]]){
            destinationViewController.rep = sendRep;
        }
    }
    
}

@end
