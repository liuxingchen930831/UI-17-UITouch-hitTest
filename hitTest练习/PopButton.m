//
//  PopButton.m
//  hitTest练习
//
//  Created by liuxingchen on 16/10/19.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "PopButton.h"

@implementation PopButton

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [touches anyObject];
    //获取当前位置的点
    CGPoint curPoint = [touch locationInView:self];
    //获取从前位置的点
    CGPoint prePoint = [touch previousLocationInView:self];
    //获取偏移量
    CGFloat offsetX = curPoint.x - prePoint.x;
    CGFloat offsetY = curPoint.y - prePoint.y;
    //修改控件的位置(center)
    CGPoint center = self.center;
    center.x += offsetX;
    center.y += offsetY;
    self.center = center;
    //修改控件的位置(transform)
//    self.transform = CGAffineTransformTranslate(self.transform, offsetX, offsetY);
}
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    //当前控件的点转换到self.chatView
    CGPoint chatPoint = [self convertPoint:point toView:self.chatView];
    //判断触摸点在不在self.chatView上
    if ([self.chatView pointInside:chatPoint withEvent:event]) {
        //如果在就返回self.chatView
        return self.chatView;
    }else{
        //如果不在就返回父类的方法
        return [super hitTest:point withEvent:event];
    }
    
}
@end
