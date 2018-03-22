//
//  MaskForBleONOView.h
//  xiaodiThird
//
//  Created by elvy on 2017/6/5.
//  Copyright © 2017年 elvy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@protocol MaskForBleONOViewDelegate;

@interface MaskForBleONOView : UIView


@property(nonatomic,assign)id<MaskForBleONOViewDelegate> delegate;

@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) UIImageView * tipsView;
@property (nonatomic, strong) NSString * nameStr;
@property (nonatomic, strong) AVAudioPlayer *avAudioPlayer;   //播放器player

- (void)show;
- (void)showWithMusic:(NSString *)music;
@end

@protocol MaskForBleONOViewDelegate <NSObject>

- (void)doCloseMaskForBleView;

//- (void)doCloseBleView;

@end
