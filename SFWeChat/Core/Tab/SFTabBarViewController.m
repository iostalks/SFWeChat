//
//  SFTabBarViewController.m
//  SFWeChat
//
//  Created by Jone on 11/11/2016.
//  Copyright © 2016 Jone. All rights reserved.
//

#import "SFTabBarViewController.h"
#import "SFNavigationController.h"

#import "SFChatsViewController.h"
#import "SFContactsViewController.h"
#import "SFDiscoverViewController.h"
#import "SFMeViewController.h"

#import "UIColor+SFTheme.h"

@interface SFTabBarViewController ()

@end

@implementation SFTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SFChatsViewController *chatsViewController = [SFChatsViewController new];
    SFNavigationController *chatsNav = [[SFNavigationController alloc] initWithRootViewController:chatsViewController
                                                                                            title:@"Chats"
                                                                                            image:@"tabbar_mainframe" selectedImage:@"tabbar_mainframeHL"];
    
    SFContactsViewController *contactsViewController = [SFContactsViewController new];
    SFNavigationController *contactsNav = [[SFNavigationController alloc] initWithRootViewController:contactsViewController
                                                                                               title:@"Contacts"
                                                                                               image:@"tabbar_contacts" selectedImage:@"tabbar_contactsHL"];
    
    SFDiscoverViewController *discoverViewController = [SFDiscoverViewController new];
    SFNavigationController *discoverNav = [[SFNavigationController alloc] initWithRootViewController:discoverViewController
                                                                                               title:@"Discover"
                                                                                               image:@"tabbar_discover" selectedImage:@"tabbar_discoverHL"];
    
    SFMeViewController *meViewController = [SFMeViewController new];
    SFNavigationController *meNav = [[SFNavigationController alloc] initWithRootViewController:meViewController
                                                                                               title:@"Me"
                                                                                               image:@"tabbar_me" selectedImage:@"tabbar_meHL"];
    self.tabBar.tintColor = [UIColor themeColor];
    self.viewControllers = @[chatsNav, contactsNav, discoverNav, meNav];
}

@end
