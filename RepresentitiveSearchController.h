//
//  RepresentitiveSearchController.h
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Representative.h" 

@interface RepresentitiveSearchController : NSObject

- (void)representativesByZipCode:(NSString *)zip completion:(void (^)(NSArray * reps))completion;
-(void)representativesByState:(NSString *)state completion:(void (^)(NSArray * reps))completion;
-(void)representativesByName:(NSString *)state completion:(void (^)(NSArray * reps))completion;
-(void)allRepresentatives: (void (^)(NSArray * reps))completion;



@end
