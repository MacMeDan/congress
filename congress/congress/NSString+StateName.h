//
//  StateNamesAndAbbriviations.h
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (USStateMap)
- (NSString*) stateAbbreviationFromFullName;
- (NSString*) stateFullNameFromAbbreviation;
@end
