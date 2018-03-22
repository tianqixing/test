//
//  ViewController.m
//  yinpin
//
//  Created by dessmann on 2018/3/20.
//  Copyright © 2018年 dessmann. All rights reserved.
//

#import "ViewController.h"
#import "MaskForBleONOView.h"

@interface ViewController ()<MaskForBleONOViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor  = [UIColor clearColor];
    
    MaskForBleONOView * ble = [[MaskForBleONOView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    ble.delegate = self;
    //    [ble show];
    [ble showWithMusic:@"长按蓝牙设置按钮，保持锁具前灯亮"];
    ble.tipsView.image = [UIImage imageNamed:@"手环手机锁具交互提示蒙板"];
}

- (void)doCloseMaskForBleView{

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
