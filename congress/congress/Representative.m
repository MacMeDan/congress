//
//  Representatives.m
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import "Representative.h"

static NSString * const NameKey = @"name";
static NSString * const PartyKey = @"party";
static NSString * const StateKey = @"state";
static NSString * const PhoneKey = @"phone";
static NSString * const AddressKey = @"office";
static NSString * const URLKey = @"link";

@implementation Representative

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.name = dictionary[NameKey];
        self.party = dictionary[PartyKey];
        self.state = dictionary[StateKey];
        self.phone = dictionary[PhoneKey];
        self.address = dictionary[AddressKey];
        self.url = dictionary[URLKey];
    }
    return self;
}

@end
