//
//  UIBaseButton.m
//  xiaodiThird
//
//  Created by elvy on 17/2/22.
//  Copyright © 2017年 elvy. All rights reserved.
//

#import "UIBaseButton.h"
#import "AppComm.h"

@implementation UIBaseButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    [self.layer setMasksToBounds:YES];
    //设置矩形四个圆角半径
    [self.layer setCornerRadius:5.0];
    self.titleLabel.font = [UIFont systemFontOfSize:17];
    //字体颜色
    [self setTitleColor:kAppButtonTextColor forState:UIControlStateNormal];
    [self setTitleColor:kAppBtnSelectTextColor forState:UIControlStateHighlighted];
    //背景
    [self setBackgroundImage:[self imageWithColor:kAppMainColor] forState:UIControlStateNormal];
    [self setBackgroundImage:[self imageWithColor:kAppBtnSelectColor] forState:UIControlStateHighlighted];
    
}

- (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
