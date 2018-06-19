//
//  ViewController.m
//  Presidents
//
//  Created by Derrick Showers on 6/17/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

#import "ViewController.h"
#import "NetworkingManager.h"
#import "PRPresident.h"

@interface ViewController ()

@property (nonatomic, nullable) UITableView *tableView;
@property (nonatomic, nullable) NSArray<PRPresident *> *presidents;

@end

@implementation ViewController

# pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setup];
    [self setupTableView];
    [self loadData];
}

# pragma mark - Setup

- (void)setup {
    self.title = @"US Presidents";
    self.view.backgroundColor = UIColor.redColor;
}

- (void)setupTableView {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.allowsSelection = NO;
    [self.view addSubview:self.tableView];
}


# pragma mark - Data

- (void)loadData {
    self.presidents = [NetworkingManager presidents];
    [self.tableView reloadData];
}

# pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.presidents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PresidentCell"];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"PresidentCell"];
    }

    PRPresident *president = [self.presidents objectAtIndex:indexPath.row];
    cell.textLabel.text = president.name;
    cell.detailTextLabel.text = president.party;

    return cell;
}

@end
