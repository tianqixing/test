//
//  MaskForBleONOView.m
//  xiaodiThird
//
//  Created by elvy on 2017/6/5.
//  Copyright © 2017年 elvy. All rights reserved.
//

#import "MaskForBleONOView.h"
#import "UIBaseButton.h"

@implementation MaskForBleONOView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)show{
    
    NSString *string = [[NSBundle mainBundle] pathForResource:@"长按蓝牙设置按钮，保持锁具前灯亮" ofType:@"wav"];
    //把音频文件转换成url格式
    NSURL *url = [NSURL fileURLWithPath:string];
    //初始化音频类 并且添加播放文件
    self.avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    //设置音乐播放次数
    //    avAudioPlayer.numberOfLoops = 1;
    self.avAudioPlayer.volume = 6;
    //预播放
    [self.avAudioPlayer play];
    
    float width = [UIScreen mainScreen].bounds.size.width;
    float height = [UIScreen mainScreen].bounds.size.height;
    
    // VIEW
    self.backgroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    self.backgroundView.backgroundColor = [UIColor clearColor];
    
    
    UIView * black = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    black.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [self.backgroundView addSubview:black];
    
    // IMAGE VIEW
    self.tipsView = [[UIImageView alloc]initWithFrame:CGRectMake(width/2-130, height/2-180, 260, 360)];
    [self.backgroundView addSubview:self.tipsView];
    
    // BUTTON
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(width/2-80, height/2+84, 160, 40)];
    [button setTitle:@"我知道了" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(doCloseMaskForBleView) forControlEvents:UIControlEventTouchUpInside];
    [self.backgroundView addSubview:button];
    
    self.backgroundView.userInteractionEnabled = YES;
    [self.backgroundView addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doCloseBleView)]];
    
    [self addSubview:self.backgroundView];
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    [window addSubview:self];
    
}
- (void)showWithMusic:(NSString *)music{
    
    NSString *string = [[NSBundle mainBundle] pathForResource:music ofType:@"wav"];
    //把音频文件转换成url格式
    NSURL *url = [NSURL fileURLWithPath:string];
    //初始化音频类 并且添加播放文件
    self.avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    //静音模式下播放声音
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryPlayback error:nil];
    //设置音乐播放次数
    //    avAudioPlayer.numberOfLoops = 1;
    self.avAudioPlayer.volume = 6;
    //预播放
    [self.avAudioPlayer play];
    
    float width = [UIScreen mainScreen].bounds.size.width;
    float height = [UIScreen mainScreen].bounds.size.height;
    
    // VIEW
    self.backgroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    self.backgroundView.backgroundColor = [UIColor clearColor];
    
    
    UIView * black = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    black.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [self.backgroundView addSubview:black];
    
    // IMAGE VIEW
    self.tipsView = [[UIImageView alloc]initWithFrame:CGRectMake(width/2-130, height/2-180, 260, 360)];
    [self.backgroundView addSubview:self.tipsView];
    
    // BUTTON
    UIBaseButton * button = [[UIBaseButton alloc] initWithFrame:CGRectMake(width/2-80, height/2+84, 160, 40)];
    [button setTitle:@"我知道了" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(doCloseMaskForBleView) forControlEvents:UIControlEventTouchUpInside];
    [self.backgroundView addSubview:button];
    
    self.backgroundView.userInteractionEnabled = YES;
    [self.backgroundView addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doCloseBleView)]];
    
    [self addSubview:self.backgroundView];
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    [window addSubview:self];
    
}

- (void)doCloseMaskForBleView {
    NSLog(@"12345");
    [self.avAudioPlayer stop];
    [self.delegate doCloseMaskForBleView];
    [self removeFromSuperview];
}


- (void)doCloseBleView {
    NSLog(@"12345");
    [self.avAudioPlayer stop];
//    [self.delegate doCloseBleView];
    [self removeFromSuperview];

}





@end
