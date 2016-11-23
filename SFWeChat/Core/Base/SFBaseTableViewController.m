//
//  SFBaseTableViewController.m
//  SFWeChat
//
//  Created by Jone on 12/11/2016.
//  Copyright © 2016 Jone. All rights reserved.
//

#import "SFBaseTableViewController.h"
#import "SFTableView.h"
#import "UIColor+SFTheme.h"

@interface SFBaseTableViewController ()

@end

@implementation SFBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UI
- (SFTableView *)tableView {
    if (!_tableView) {
        _tableView = [[SFTableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.frame = self.view.bounds;
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.rowHeight = 44;
        _tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
        _tableView.scrollIndicatorInsets = _tableView.contentInset;
        _tableView.backgroundColor = [UIColor skinColor];
        _tableView.backgroundView.backgroundColor = [UIColor skinColor];
    }
    return _tableView;
}

@end
