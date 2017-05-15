//
//  Model.h
//  关于 KVO
//
//  Created by Apple on 16-5-16.
//  Copyright (c) 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) NSInteger age;

- (instancetype)initWithName:(NSString *)name AndWithAge:(NSInteger)age;

@end
