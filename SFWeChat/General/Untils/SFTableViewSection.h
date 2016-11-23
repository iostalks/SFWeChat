//
//  SFTableViewSection.h
//  SFWeChat
//
//  Created by Jone on 11/11/2016.
//  Copyright © 2016 Jone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SFTableViewSection : NSObject

@property (nonatomic, strong, readonly) NSMutableArray *titles;
@property (nonatomic, strong, readonly) NSMutableArray *classNames;
@property (nonatomic, strong, readonly) NSMutableArray *imageNames;

- (void)insertTitle:(NSString *)title class:(NSString *)className image:(NSString *)imageName;

@end
