//
//  NextViewController.m
//  yinpin
//
//  Created by dessmann on 2018/3/22.
//  Copyright © 2018年 dessmann. All rights reserved.
//

#import "NextViewController.h"
#import "ThirdViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    btn.backgroundColor = [UIColor darkGrayColor];
    [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)btnclick{
    ThirdViewController *nvc = [[ThirdViewController alloc] init];
    [self.navigationController showViewController:nvc sender:self];
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
