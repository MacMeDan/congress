//
//  ResultsViewController.m
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import "ResultsViewController.h"
#import "RepresentitiveSearchController.h"


@interface ResultsViewController () <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) RepresentitiveSearchController *searchController;

@property (strong, nonatomic) NSArray *representatives;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set the title of the view to the zip code that was entered into the search feild. Giving the user context of what the results relate too.
    self.title = self.zipCode;
    
    self.searchController = [RepresentitiveSearchController new];
    
    [self.searchController representativesByZipCode:self.zipCode completion:^(NSArray *reps) {
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
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@", rep.name, rep.party];
    cell.detailTextLabel.text = rep.address;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.representatives.count;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
