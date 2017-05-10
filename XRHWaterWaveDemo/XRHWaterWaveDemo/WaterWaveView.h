//
//  WaterWaveView.h
//  XRHWaterWaveDemo
//
//  Created by xiangronghua on 2017/5/10.
//  Copyright © 2017年 xiangronghua. All rights reserved.
//


//  核心波浪view

#import <UIKit/UIKit.h>

@interface WaterWaveView : UIView

@property (nonatomic, strong)   UIColor *firstWaveColor;    // 第一个波浪颜色
@property (nonatomic, strong)   UIColor *secondWaveColor;   // 第二个波浪颜色

@property (nonatomic, assign)   CGFloat percent;            // 百分比

-(void) startWave;

-(void) stopWave;

-(void) reset;

@end
