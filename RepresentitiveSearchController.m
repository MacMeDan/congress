//
//  RepresentitiveSearchController.m
//  congress
//
//  Created by P Leonard on 4/11/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

#import "RepresentitiveSearchController.h"



@implementation RepresentitiveSearchController

- (void)representativesByZipCode:(NSString *)zip completion:(void (^)(NSArray * reps))completion {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://whoismyrepresentative.com/getall_mems.php?zip=%@&output=json", zip]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSArray *representatives = [[NSJSONSerialization JSONObjectWithData:data options:0 error:nil] objectForKey:@"results"];
        NSLog(@"There was an error : %@", error);
        NSMutableArray *convertedReps = [NSMutableArray new];
        
        for (NSDictionary *dictionary in representatives) {
            Representative *rep = [[Representative alloc] initWithDictionary:dictionary];
            
            [convertedReps addObject:rep];
        }
        completion(convertedReps);
    }];
    
    [dataTask resume];
    
}

- (void)representativesByState:(NSString *)state completion:(void (^)(NSArray * reps))completion {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://whoismyrepresentative.com/getall_reps_bystate.php?state=%@&output=json", state]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSArray *representatives = [[NSJSONSerialization JSONObjectWithData:data options:0 error:nil] objectForKey:@"results"];
        NSLog(@"There was an error : %@", error);
        NSMutableArray *convertedReps = [NSMutableArray new];
        
        for (NSDictionary *dictionary in representatives) {
            Representative *rep = [[Representative alloc] initWithDictionary:dictionary];
            
            [convertedReps addObject:rep];
        }
        completion(convertedReps);
    }];
    
    [dataTask resume];
    
}

- (void)representativesByName:(NSString *)name completion:(void (^)(NSArray * reps))completion {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://whoismyrepresentative.com/getall_reps_bystate.php?state=%@&output=json", name]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSArray *representatives = [[NSJSONSerialization JSONObjectWithData:data options:0 error:nil] objectForKey:@"results"];
        NSLog(@"There was an error : %@", error);
        NSMutableArray *convertedReps = [NSMutableArray new];
        
        for (NSDictionary *dictionary in representatives) {
            Representative *rep = [[Representative alloc] initWithDictionary:dictionary];
            
            [convertedReps addObject:rep];
        }
        completion(convertedReps);
    }];
    
    [dataTask resume];
    
}

- (void)allRepresentatives: (void (^)(NSArray * reps))completion {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://whoismyrepresentative.com/member/all&output=json"]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSArray *representatives = [[NSJSONSerialization JSONObjectWithData:data options:0 error:nil] objectForKey:@"results"];
        NSLog(@"There was an error : %@", error);
        NSMutableArray *convertedReps = [NSMutableArray new];
        
        for (NSDictionary *dictionary in representatives) {
            Representative *rep = [[Representative alloc] initWithDictionary:dictionary];
            
            [convertedReps addObject:rep];
        }
        completion(convertedReps);
    }];
    
    [dataTask resume];
    
}


@end
