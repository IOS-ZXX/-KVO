//
//  Model.m
//  关于 KVO
//
//  Created by Apple on 16-5-16.
//  Copyright (c) 2016年 Apple. All rights reserved.
//

#import "Model.h"

@implementation Model
@synthesize name = _name;
@synthesize age = _age;

- (instancetype)initWithName:(NSString *)name AndWithAge:(NSInteger)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

@end
