//
//  PRPresident.h
//  Presidents
//
//  Created by Derrick Showers on 6/17/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PRPresident : NSObject

@property (nonatomic, nonnull) NSString *name;
@property (nonatomic, nullable) NSString *party;

- (instancetype)initWithName:(NSString *)name
                       party:(NSString *)party;
- (instancetype)initWithJson:(NSData *)json;

@end
