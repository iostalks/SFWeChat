//
//  SFNavigationController.m
//  SFWeChat
//
//  Created by Jone on 11/11/2016.
//  Copyright © 2016 Jone. All rights reserved.
//

#import "SFNavigationController.h"
#import "UIColor+SFTheme.h"

@interface SFNavigationController ()

@end

@implementation SFNavigationController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
                                     title:(NSString *)title
                                     image:(NSString *)imageName
                             selectedImage:(NSString *)selectedImageName {
    
    UIImage *image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:image selectedImage:selectedImage];
    rootViewController.tabBarItem = tabBarItem;
    
    SFNavigationController *navigationConroller = [super initWithRootViewController:rootViewController];
    navigationConroller.navigationBar.barTintColor = [UIColor barTintColor];
    navigationConroller.navigationBar.tintColor = [UIColor whiteColor];
    navigationConroller.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    return navigationConroller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (UIViewController *)childViewControllerForStatusBarStyle {
    return self.topViewController;
}

@end
