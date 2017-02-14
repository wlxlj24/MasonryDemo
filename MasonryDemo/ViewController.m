//
//  ViewController.m
//  MasonryDemo
//
//  Created by TailC on 2017/2/14.
//  Copyright © 2017年 TailC. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableview;
@property (nonatomic,strong) NSArray *datasource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableview.delegate =self;
    self.tableview.dataSource = self;
    [self.view addSubview:self.tableview];
    
    [self.tableview registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellID"];
    
    self.datasource = @[@"居中显示一个view"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark ----- <UITableViewDataSource> -----
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datasource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = self.datasource[indexPath.row];
    
    return cell;
}

#pragma mark ----- <UITableViewDelegate> -----
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:{
            //居中显示一个view
            ViewController1 *vc = [ViewController1 new];
            vc.view.backgroundColor = [UIColor whiteColor];
            vc.title = self.datasource[indexPath.row];
            [self.navigationController pushViewController:vc animated:YES];
            
            break;
        }
            
        default:
            break;
    }
}


@end
