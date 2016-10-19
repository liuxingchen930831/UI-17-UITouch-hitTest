//
//  ViewController.m
//  hitTest练习
//
//  Created by liuxingchen on 16/10/19.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"
#import "PopButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)clickPop:(PopButton *)sender
{
    UIButton *chatButton = [UIButton buttonWithType:UIButtonTypeCustom];
    chatButton.bounds = CGRectMake(0,0, 200, 200);
    chatButton.center = CGPointMake(100, -100);
    [chatButton setBackgroundImage:[UIImage imageNamed:@"对话框"] forState:UIControlStateNormal];
    [chatButton setBackgroundImage:[UIImage imageNamed:@"小孩"] forState:UIControlStateHighlighted];
    sender.chatView = chatButton;
    [sender addSubview:chatButton];
}

@end
