//
//  SFNavigationController.h
//  SFWeChat
//
//  Created by Jone on 11/11/2016.
//  Copyright © 2016 Jone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SFNavigationController : UINavigationController

// instance for tab bar controller
- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
                                     title:(NSString *)title
                                     image:(NSString *)imageName
                             selectedImage:(NSString *)selectedImageName;

@end
