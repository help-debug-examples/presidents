//
//  ViewController.m
//  Presidents
//
//  Created by Derrick Showers on 6/17/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

#import "ViewController.h"
#import "NetworkingManager.h"
#import "President.h"

@interface ViewController ()

@end

@implementation ViewController

# pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setup];
    [self loadData];
}

# pragma mark - Setup

- (void)setup {
    self.view.backgroundColor = UIColor.redColor;
}


# pragma mark - Data

- (void)loadData {
    // TODO: Show this in a `UITableView`
    NSArray *presidents = [NetworkingManager presidents];
    NSLog(@"%@", presidents);
}


@end
