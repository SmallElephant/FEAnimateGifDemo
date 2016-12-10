//
//  ViewController.m
//  FEAnimateGifDemo
//
//  Created by FlyElephant on 16/12/10.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "FLAnimatedImage.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *showBgView;

@property (strong, nonatomic) FLAnimatedImageView *animatedImgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.showBgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.showBgView.center = self.view.center;
    self.showBgView.backgroundColor = [UIColor redColor];
    NSURL *imgUrl = [[NSBundle mainBundle] URLForResource:@"img_coins_ecrease" withExtension:@"gif"];
    FLAnimatedImage *animatedImg = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:imgUrl]];
    self.animatedImgView = [[FLAnimatedImageView alloc] init];
    self.animatedImgView.animatedImage = animatedImg;
    self.animatedImgView.frame = CGRectMake(0,0,80,112);
    [self.showBgView addSubview:self.animatedImgView];
    [self.view addSubview:self.showBgView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
