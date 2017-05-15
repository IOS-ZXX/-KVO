//
//  ViewController.m
//  关于 KVO
//
//  Created by Apple on 16-5-16.
//  Copyright (c) 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
@interface ViewController ()

@property (nonatomic,strong) UILabel * label;

@property (nonatomic,strong) Model * model;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _model = [[Model alloc]initWithName:@"网" AndWithAge:12];
    [_model addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 400, 50, 50)];
    [btn addTarget:self action:@selector(BtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn];
    
    _label = [[UILabel alloc]initWithFrame:CGRectMake(150, 200, 200, 100)];
    _label.text = [NSString stringWithFormat:@"姓名:%@ 年龄:%ld",_model.name,_model.age];
    [self.view addSubview:_label];
    
}

- (void)BtnClick:(UIButton *)btn{
    _model.age += 3;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if ([keyPath isEqualToString:@"age"]) {
        _label.text = [NSString stringWithFormat:@"姓名:%@ 年龄:%ld",_model.name,_model.age];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
