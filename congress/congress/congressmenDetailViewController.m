//
//  congressmenDetailViewController.m
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import "congressmenDetailViewController.h"

@interface congressmenDetailViewController ()

@end

@implementation congressmenDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = _rep.name;
    NSLog(@"%@", _rep.name);
    self.name.text = _rep.name;
    self.phone.text = _rep.phone;
    self.office.text = _rep.address;
    self.party.text = _rep.party;
    self.state.text = _rep.state;
    self.url.text = _rep.url;
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//    
//}


@end
