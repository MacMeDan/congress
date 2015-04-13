//
//  StatePickerViewController.m
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import "StatePickerViewController.h"
#import "Representative.h"
#import "congressmenDetailViewController.h"
#import "StateResultsViewController.h"

@interface StatePickerViewController ()
{
    NSArray *_statePickerData;
    NSString *state;
}

@end

@implementation StatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    _statePickerData = [NSArray arrayWithObjects:@"AL", @"AK", @"AZ", @"AR", @"CA", @"CO", @"CT", @"DE", @"FL", @"GA", @"HI", @"ID", @"IL", @"IN", @"IA", @"KS", @"KY", @"LA", @"ME", @"MD", @"MA", @"MI", @"MN", @"MS", @"MO", @"MT", @"NE", @"NV", @"NH", @"NJ", @"NM", @"NY", @"NC", @"ND", @"OH", @"OK", @"OR", @"PA", @"RI", @"SC", @"SD", @"TN", @"TX", @"UT", @"VT", @"VA", @"WA", @"WV", @"WI", @"WY", nil];
    self.pickerView.dataSource = self;
    self.pickerView.delegate =self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)titleForRow:(NSInteger)row
{
    return [NSString stringWithFormat:@"Row %li", (long)row];
}

-(NSInteger)numberOfRows
{
    return 0;
}

#pragma mark UIPickerDataSource Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 50;
}

#pragma mark UIPickerDelegate Methods

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _statePickerData[row];
}

- (NSInteger)selectedRowInComponent:(NSInteger)component {
    state = _statePickerData[component];
    return component;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    StateResultsViewController * destinationViewController = segue.destinationViewController;
//    [self.pickerView sele]
    NSLog(@"%@",segue);
    destinationViewController.state = state;
}

@end
