//
//  PRPresident.m
//  Presidents
//
//  Created by Derrick Showers on 6/17/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

#import "PRPresident.h"

@implementation PRPresident

# pragma mark - Init

- (instancetype)initWithName:(NSString *)name
                       party:(NSString *)party {

    if (self = [super init]) {
        _name = name;
        _party = party;
    }

    return self;
}

- (instancetype)initWithJson:(NSDictionary *)json {

    if (self = [super init]) {
        _name = [json objectForKey:@"president"];
        _party = [json objectForKey:@"party"];
    }

    return self;
}

@end
