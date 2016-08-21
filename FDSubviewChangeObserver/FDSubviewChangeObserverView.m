//
//  FDSubviewChangeObserverView.m
//  FDSubviewChangeObserverDemo
//
//  Created by weichao on 16/8/21.
//  Copyright © 2016年 chaowei. All rights reserved.
//

#import "FDSubviewChangeObserverView.h"

@implementation FDSubviewChangeObserverView
- (void)insertSubview:(UIView *)view atIndex:(NSInteger)index {
    [super insertSubview:view atIndex:index];
    NSLog(@"[FDSubviewChangeObserverView]view:%@;func:%s",view,__func__);
}

- (void)exchangeSubviewAtIndex:(NSInteger)index1 withSubviewAtIndex:(NSInteger)index2 {
    [super exchangeSubviewAtIndex:index1 withSubviewAtIndex:index2];
    NSLog(@"[FDSubviewChangeObserverView]func:%s",__func__);
}

- (void)addSubview:(UIView *)view {
    [super addSubview:view];
    NSLog(@"[FDSubviewChangeObserverView]view:%@;func:%s",view,__func__);
}
- (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview {
    [super insertSubview:view belowSubview:siblingSubview];
    NSLog(@"[FDSubviewChangeObserverView]view:%@;siblingSubview:%@;func:%s",view,siblingSubview,__func__);
}

- (void)insertSubview:(UIView *)view aboveSubview:(UIView *)siblingSubview {
    [super insertSubview:view aboveSubview:siblingSubview];
    NSLog(@"[FDSubviewChangeObserverView]view:%@;siblingSubview:%@;func:%s",view,siblingSubview,__func__);
}

- (void)bringSubviewToFront:(UIView *)view {
    [super bringSubviewToFront:view];
    NSLog(@"[FDSubviewChangeObserverView]view:%@;func:%s",view,__func__);
}

- (void)sendSubviewToBack:(UIView *)view {
    [super sendSubviewToBack:view];
    NSLog(@"[FDSubviewChangeObserverView]view:%@;func:%s",view,__func__);
}

- (void)didAddSubview:(UIView *)subview {
    [super didAddSubview:subview];
    NSLog(@"[FDSubviewChangeObserverView]view:%@;func:%s;callStackSymbols:%@",subview,__func__,[NSThread callStackSymbols]);
}

- (void)willRemoveSubview:(UIView *)subview {
    [super willRemoveSubview:subview];
    NSLog(@"[FDSubviewChangeObserverView]view:%@;func:%s;callStackSymbols:%@",subview,__func__,[NSThread callStackSymbols]);
}
@end
