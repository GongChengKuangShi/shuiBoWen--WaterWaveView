//
//  ViewController.m
//  XRHWaterWaveDemo
//
//  Created by xiangronghua on 2017/5/10.
//  Copyright © 2017年 xiangronghua. All rights reserved.
//

#import "ViewController.h"
#import "WaveProgressView.h"

@interface ViewController ()

@property (nonatomic, weak) WaveProgressView *waveProgressView1;
@property (nonatomic, weak) WaveProgressView *waveProgressView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addWaveProgressView1];
    
    [self addWaveProgressView2];
}

- (void)addWaveProgressView1
{
    WaveProgressView *waveProgressView = [[WaveProgressView alloc]initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame) - 180)/2, 44, 180, 180)];
    waveProgressView.waveViewMargin = UIEdgeInsetsMake(15, 15, 20, 20);
    waveProgressView.backgroundImageView.image = [UIImage imageNamed:@"bg_tk_003"];
    waveProgressView.numberLabel.text = @"80";
    waveProgressView.numberLabel.font = [UIFont boldSystemFontOfSize:70];
    waveProgressView.numberLabel.textColor = [UIColor whiteColor];
    waveProgressView.unitLabel.text = @"%";
    waveProgressView.unitLabel.font = [UIFont boldSystemFontOfSize:20];
    waveProgressView.unitLabel.textColor = [UIColor whiteColor];
    waveProgressView.explainLabel.text = @"电量";
    waveProgressView.explainLabel.font = [UIFont systemFontOfSize:20];
    waveProgressView.explainLabel.textColor = [UIColor whiteColor];
    
    waveProgressView.percent = 0.76;
    [self.view addSubview:waveProgressView];
    _waveProgressView1 = waveProgressView;
    [_waveProgressView1 startWave];
}

- (void)addWaveProgressView2
{
    WaveProgressView *waveProgressView = [[WaveProgressView alloc]initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame) - 180)/2, 300, 180, 180)];
    waveProgressView.waveViewMargin = UIEdgeInsetsMake(15, 15, 20, 20);
    waveProgressView.backgroundImageView.image = [UIImage imageNamed:@"bg_tk_003"];
    waveProgressView.numberLabel.text = @"68";
    waveProgressView.numberLabel.font = [UIFont boldSystemFontOfSize:70];
    waveProgressView.numberLabel.textColor = [UIColor whiteColor];
    waveProgressView.explainLabel.text = @"评分";
    waveProgressView.explainLabel.font = [UIFont systemFontOfSize:20];
    waveProgressView.explainLabel.textColor = [UIColor whiteColor];
    
    waveProgressView.percent = 0.68;
    [self.view addSubview:waveProgressView];
    _waveProgressView2 = waveProgressView;
    [_waveProgressView2 startWave];
    
}


- (IBAction)reStartWave:(UIButton *)sender {
    
    [_waveProgressView1 resetWave];
    [_waveProgressView2 resetWave];
    [_waveProgressView1 startWave];
    [_waveProgressView2 startWave];
}

- (IBAction)increaseWave:(UIButton *)sender {
    
    _waveProgressView1.percent = 0.9;
    _waveProgressView2.percent = 0.8;
    [_waveProgressView1 startWave];
    [_waveProgressView2 startWave];
}

- (IBAction)decreaseWave:(UIButton *)sender {
    
    _waveProgressView1.percent = 0.36;
    _waveProgressView2.percent = 0.28;
    [_waveProgressView1 startWave];
    [_waveProgressView2 startWave];
}



@end
