//
//  SFBaseTableViewController.h
//  SFWeChat
//
//  Created by Jone on 12/11/2016.
//  Copyright © 2016 Jone. All rights reserved.
//

#import "SFBaseViewController.h"

@class SFTableView;
@interface SFBaseTableViewController : SFBaseViewController<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) SFTableView *tableView;
@end
