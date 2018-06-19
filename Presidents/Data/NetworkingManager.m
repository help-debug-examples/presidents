//
//  NetworkingManager.m
//  Presidents
//
//  Created by Derrick Showers on 6/17/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

#import "NetworkingManager.h"
#import "PRPresident.h"

@implementation NetworkingManager

# pragma mark - Public Methods

+ (NSArray *)presidents {

    NSError *error;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:[self dataFromFilename:@"presidents"]
                                                         options:kNilOptions
                                                           error:&error];

    NSMutableArray<PRPresident *> *presidents = [NSMutableArray new];

    for (id item in json) {
        [presidents addObject:[[PRPresident alloc] initWithJson:item]];
    }

    return presidents;
}

# pragma mark - Private Methods

+ (NSData *)dataFromFilename:(NSString *)filename {

    NSURL *pathURL = [[NSBundle mainBundle] URLForResource:filename withExtension:@"json"];
    if (!pathURL) {
        return nil;
    }

    return [[NSData alloc] initWithContentsOfURL:pathURL];
}

@end
