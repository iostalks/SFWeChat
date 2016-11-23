//
//  SFTableViewSection.m
//  SFWeChat
//
//  Created by Jone on 11/11/2016.
//  Copyright © 2016 Jone. All rights reserved.
//

#import "SFTableViewSection.h"

@interface SFTableViewSection()

@property (nonatomic, strong, readwrite) NSMutableArray *titles;
@property (nonatomic, strong, readwrite) NSMutableArray *classNames;
@property (nonatomic, strong, readwrite) NSMutableArray *imageNames;

@end

@implementation SFTableViewSection

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    _titles = @[].mutableCopy;
    _classNames = @[].mutableCopy;
    _imageNames = @[].mutableCopy;
    return self;
}

- (void)insertTitle:(NSString *)title class:(NSString *)className image:(NSString *)imageName {
    [_titles addObject:title];
    [_classNames addObject:className];
    [_imageNames addObject:imageName];
}

@end
