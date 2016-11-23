//
//  SFDiscoverViewController.m
//  SFWeChat
//
//  Created by Jone on 11/11/2016.
//  Copyright © 2016 Jone. All rights reserved.
//

#import "SFDiscoverViewController.h"
#import "SFTableView.h"

#import "SFMacro.h"
#import "UIColor+SFTheme.h"
#import "SFTableViewSection.h"

static NSString * kTableViewCellIdentifier = @"kTableViewCellIdentifier";

@interface SFDiscoverViewController()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) SFTableView *tableView;
@property (nonatomic, strong) NSMutableArray *sectionArray;

@end

@implementation SFDiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor skinColor];
    [self.view addSubview:self.tableView];
    
    self.sectionArray = [NSMutableArray new];
    SFTableViewSection *firstSection = [[SFTableViewSection alloc] init];
    [firstSection insertTitle:@"Moments" class:@"SFMomentsViewController" image:@"ff_IconShowAlbum"];
    [self.sectionArray addObject:firstSection];
    
    SFTableViewSection *twoSection = [[SFTableViewSection alloc] init];
    [twoSection insertTitle:@"Scan QR Code" class:@"SFBaseViewController" image:@"ff_IconQRCode"];
    [twoSection insertTitle:@"Shake" class:@"SFBaseViewController" image:@"ff_IconShake"];
    [self.sectionArray addObject:twoSection];
    
    SFTableViewSection *thirdSection = [[SFTableViewSection alloc] init];
    [thirdSection insertTitle:@"People Nearby" class:@"SFBaseViewController" image:@"ff_IconLocationService"];
    [thirdSection insertTitle:@"Message in a Bottle" class:@"SFBaseViewController" image:@"ff_IconBottle"];
    [self.sectionArray addObject:thirdSection];
    
    SFTableViewSection *forthSection = [[SFTableViewSection alloc] init];
    [forthSection insertTitle:@"Games" class:@"SFBaseViewController" image:@"ff_iconGame"];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.title = @"Discover";
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _sectionArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    SFTableViewSection *sections = (SFTableViewSection *)_sectionArray[section];
    return sections.titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kTableViewCellIdentifier forIndexPath:indexPath];
    [self configureCell:cell forRowAtIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    SFTableViewSection *sections = (SFTableViewSection *)_sectionArray[indexPath.section];
    
    cell.imageView.image = [UIImage imageNamed:sections.imageNames[indexPath.row]];
    cell.textLabel.text = sections.titles[indexPath.row];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    SFTableViewSection *sections = (SFTableViewSection *)_sectionArray[indexPath.section];
    Class class = NSClassFromString(sections.classNames[indexPath.row]);
    SFBaseViewController *vctrl = [class new];
    vctrl.title = sections.titles[indexPath.row];
    vctrl.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vctrl animated:YES];
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return kViewMargin;
    }
    return 1.5 * kViewMargin;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

// Only set contentView can change color.
//- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section {
//    UITableViewHeaderFooterView *tableViewFootView = (UITableViewHeaderFooterView *)view;
//    tableViewFootView.contentView.backgroundColor = [UIColor skinColor];
//}
//
//// Only set contentView can change color.
//- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
//    UITableViewHeaderFooterView *tableViewHeaderView = (UITableViewHeaderFooterView *)view;
//    tableViewHeaderView.contentView.backgroundColor = [UIColor skinColor];
//}

#pragma mark - UI

- (SFTableView *)tableView {
    if (!_tableView) {
        _tableView = [[SFTableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.frame = self.view.bounds;
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.rowHeight = 44;
        _tableView.separatorInset = UIEdgeInsetsMake(0, 16, 0, 0);
//        _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLineEtched;
        _tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
        _tableView.scrollIndicatorInsets = _tableView.contentInset;
        _tableView.backgroundColor = [UIColor skinColor];
        _tableView.backgroundView.backgroundColor = [UIColor skinColor];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kTableViewCellIdentifier];
    }
    return _tableView;
}
@end
