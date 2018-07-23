//
//  NSLayoutConstraint+Fit.m
//  fs-iOS
//
//  Created by insect_qy on 2018/7/17.
//  Copyright © 2018年 cn.com.shopec.car. All rights reserved.
//

#import "NSLayoutConstraint+Fit.h"
#import "Macro.h"

#import <objc/runtime.h>

@implementation NSLayoutConstraint (Fit)

static void *horizontal_key = &horizontal_key;
static void *vertical_key = &horizontal_key;

- (void)setHorizontalConstant:(CGFloat)horizontalConstant {
    
    self.constant = KScaleH(horizontalConstant);
    objc_setAssociatedObject(self, &horizontal_key, @(horizontalConstant), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)horizontalConstant {
    return [objc_getAssociatedObject(self, &horizontal_key) floatValue];
}

- (void)setVerticalConstant:(CGFloat)verticalConstant {
    
    self.constant = KScaleV(verticalConstant);
    objc_setAssociatedObject(self, &vertical_key, @(verticalConstant), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)verticalConstant {
    return [objc_getAssociatedObject(self, &vertical_key) floatValue];
}

@end
