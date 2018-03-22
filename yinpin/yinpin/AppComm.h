//
//  AppComm.h
//  xiaodiThird
//
//  Created by elvy on 17/2/22.
//  Copyright © 2017年 elvy. All rights reserved.
//

#ifndef AppComm_h
#define AppComm_h

#define kJsonFailed              0
#define kJsonSucceed             1


#pragma mark - app 屏幕适配

#define kIOSVersions [[[UIDevice currentDevice] systemVersion] floatValue] //获得iOS版本
#define kUIWindow    [[[UIApplication sharedApplication] delegate] window] //获得window

#define kScreenSize                 [[UIScreen mainScreen] bounds].size                   //(e.g. 320,480)
#define kScreenWidth                [[UIScreen mainScreen] bounds].size.width           //(e.g. 320)
#define kScreenHeight  (kIOSVersions>=7.0 ? [[UIScreen mainScreen] bounds].size.height + 64 : [[UIScreen mainScreen] bounds].size.height)



#pragma mark - app 颜色

#define UIColorFromRGB(rgbValue) [UIColor  colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0  green:((float)((rgbValue & 0xFF00) >> 8))/255.0  blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define kAppMainColor               UIColorFromRGB(0x622060)//主色调
#define kAppTextColor               UIColorFromRGB(0x333333)//正文文案
#define kAppSecTextColor            UIColorFromRGB(0x666666)//次级文案
#define kAppExpTextColor            UIColorFromRGB(0x9b9b9b)//说明性文案
#define kAppButtonTextColor         UIColorFromRGB(0xffffff)//按钮文字
#define kAppBtnSelectTextColor      UIColorFromRGB(0xF8F8F8)//按钮按下文字
#define kAppWarningColor            UIColorFromRGB(0xff3b30)//警示性button／icon
#define kAppTextLineColor           UIColorFromRGB(0xe7e7e7)//列表分割线颜色
#define kAppBackgroundColor         UIColorFromRGB(0xefeff4)//背景颜色
#define kAppBtnSelectColor          UIColorFromRGB(0x541352)//按钮按下颜色
#define kAppBtnUnSelectColor        UIColorFromRGB(0xe8ddd2)//按钮禁用
#define kAppBtnborderColor          UIColorFromRGB(0xcacaca)//按钮边框颜色
#define kAppDetailUseColor          UIColorFromRGB(0x10aeff)//可用
#define kAppDetailUnableColor       UIColorFromRGB(0xff7345)//禁用
#define kAppButtonBoardColor        UIColorFromRGB(0xc7c7c7)//禁用
#define kAppUpTextColor             UIColorFromRGB(0xff9170)//橘色
#define kAppBlueTextColor           UIColorFromRGB(0x007aff)//蓝色
//个人信息
#define kAccountID          @"accountid"
#define kNickname           @"nickname"
#define kMobile             @"mobile"
#define kHeadUrl            @"headurl"
#define kPassword           @"password"
#define kChannelID          @"kChannelID"      //推送通道
#define kCardNum            @"accountCardNum"
#define kAddress            @"accountAddress"
#define kLoginState_success @"loginState_yes"
#define kLoginState         @"loginstate"
#define kToken              @"token"
#define kItem6              @"item6"
#define kName              @"name"

//更新锁具硬件相关
#define kDFUState           @"kFirmwareState"       //硬件状态 0:更新完成／没有更新／更新取消  1:切换DFU成功
#define kDFUTime            @"kFirmwareUpdateTime"  //上次更新锁具时间
//硬件更新状态保存
#define kDFUForceDFU        @"dfu_force_dfu"
#define kDFUDiameter        @"key_diameter"
#define kDFUNumberOfPackets @"dfu_number_of_packets"

#define headDefaltWidth             46
#define headDefaltHeight            46
#define upLoadImgWidth            400
//分享相关key
#define kUmengSocialAppkey  @"56f8f50767e58e2781000a46"
#define kWeixinAppID        @"wx47a0ceba488b308c"
#define kWeixinAppSecretkey @"9516d598536599c6dfe14df40b950d7d"

//带删除
#define kAppColorC_red            UIColorFromRGB(0xbb0303)//红色
#define kAppColorC_click            UIColorFromRGB(0x333333)//黑色

//通知刷新主页tableview
#define kReloadMainViewData             @"kReloadMainViewData"

//猫眼
#define SERVERADDRESS @"thirdparty.ecamzone.cc:8443"
#define APPKEY @"zYQQHTTkHMh7Na5C5SrKHw7mHJYXYmDr"

#define kCatReqid           @"catReqid"
#define kCatUid             @"catuid"
#define kCatStatus          @"catstatus"
#define kCatCallSid         @"catcallsid"

#define kCatCallView         @"kCatCallView" //是否在通话中   0:不通话  1:通话

//个推
#define kBaiduChannelID         @"kBaiduChannelID"

//umeng
#define kUmengClickAppkey   @"5819ab0f75ca355dcf0030e0"    //正式服统计
//#define kUmengClickAppkey   @"581a9730cae7e74aff003604"  //测试统计


#endif /* AppComm_h */
