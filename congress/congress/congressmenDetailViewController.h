//
//  congressmenDetailViewController.h
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Representative.h"

@interface congressmenDetailViewController : UIViewController
@property (weak, nonatomic) Representative *rep;
@property (weak, nonatomic) IBOutlet UILabel *phone;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *office;
@property (weak, nonatomic) IBOutlet UILabel *state;
@property (weak, nonatomic) IBOutlet UILabel *district;
@property (weak, nonatomic) IBOutlet UILabel *party;
@property (weak, nonatomic) IBOutlet UILabel *url;

@end
