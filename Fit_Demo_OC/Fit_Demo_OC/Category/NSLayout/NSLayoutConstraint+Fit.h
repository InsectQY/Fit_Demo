//
//  NSLayoutConstraint+Fit.h
//  fs-iOS
//
//  Created by insect_qy on 2018/7/17.
//  Copyright © 2018年 cn.com.shopec.car. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (Fit)

/** 水平方向约束*/
@property (nonatomic, assign)IBInspectable CGFloat horizontalConstant;
/** 竖直方向约束 */
@property (nonatomic, assign)IBInspectable CGFloat verticalConstant;

@end
