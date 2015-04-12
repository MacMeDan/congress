//
//  StatePickerViewController.h
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StatePickerViewController : UIViewController < UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
- (IBAction)findBtn:(id)sender;

@end
