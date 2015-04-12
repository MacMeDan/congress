//
//  StateNamesAndAbbriviations.m
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//


#import "NSString+StateName.h"

@implementation NSString (USStateMap)

static NSDictionary *stateAbbreviationsMap = nil;
- (NSDictionary *)stateAbbreviationsMap
{
    if (stateAbbreviationsMap == nil) {
        NSString *plist = [[NSBundle mainBundle] pathForResource:@"USStateAbbreviations" ofType:@"plist"];
        stateAbbreviationsMap = [[NSDictionary alloc] initWithContentsOfFile:plist];
    }
    return stateAbbreviationsMap;
}

- (NSString *)stateAbbreviationFromFullName
{
    return [self.stateAbbreviationsMap objectForKey:self.uppercaseString];
}

- (NSString *)stateFullNameFromAbbreviation
{
    NSString *upperAbbr = [self uppercaseString];
    
    for (NSString *abbreviation in [self.stateAbbreviationsMap allValues]) {
        if ([abbreviation isEqualToString:upperAbbr]) {
            return [[self.stateAbbreviationsMap objectForKey:upperAbbr] capitalizedString];
        }
    }
    return nil;
}
@end

