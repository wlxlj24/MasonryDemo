//
//  ViewController3.m
//  MasonryDemo
//
//  Created by TailC on 2017/2/14.
//  Copyright © 2017年 TailC. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *sv = ({
        UIView *var = [UIView new];
        [var showPlaceHolder];
        var.backgroundColor = [UIColor blackColor];
        var;
    });
    [self.view addSubview:sv];
    
    UIView *sv2 = ({
        UIView *var = [UIView new];
        [var showPlaceHolder];
        var.backgroundColor = [UIColor orangeColor];
        var;
    });
    [sv addSubview:sv2];
    
    UIView *sv3 = ({
        UIView *var = [UIView new];
        [var showPlaceHolder];
        var.backgroundColor = [UIColor orangeColor];
        var;
    });
    [sv addSubview:sv3];
    
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    int padding1 = 10;
    
    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(@150);
        make.centerY.mas_equalTo(sv.mas_centerY);
        make.width.mas_equalTo(sv3.mas_width);
        make.left.mas_equalTo(sv.mas_left).offset(padding1);
        make.right.mas_equalTo(sv3.mas_left).offset(-padding1);
    }];
    
    
    [sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(sv2.mas_height);
        make.centerY.mas_equalTo(sv.mas_centerY);
        make.width.mas_equalTo(sv2.mas_width);
        make.left.mas_equalTo(sv2.mas_right).offset(padding1);
        make.right.mas_equalTo(sv.mas_right).offset(-padding1);
    }];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
