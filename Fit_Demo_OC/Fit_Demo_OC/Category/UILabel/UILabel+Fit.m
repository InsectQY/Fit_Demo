//
//  UILabel+Fit.m
//  Fit_Demo_OC
//
//  Created by insect_qy on 2018/7/23.
//  Copyright © 2018年 insect_qy. All rights reserved.
//

#import "UILabel+Fit.h"
#import "Macro.h"

#import <objc/runtime.h>

@implementation UILabel (Fit)

static void *fitFontSize_key = &fitFontSize_key;

- (void)setFitFontSize:(CGFloat)fitFontSize {
    
    self.font = [UIFont fontWithName:self.font.fontName size:KScaleH(fitFontSize)];
    objc_setAssociatedObject(self, &fitFontSize_key, @(fitFontSize), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)fitFontSize {
    return [objc_getAssociatedObject(self, &fitFontSize_key) floatValue];
}

@end
