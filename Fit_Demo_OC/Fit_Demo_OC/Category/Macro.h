//
//  Macro.h
//  Fit_Demo_OC
//
//  Created by insect_qy on 2018/7/23.
//  Copyright © 2018年 insect_qy. All rights reserved.
//

#ifndef Macro_h
#define Macro_h

/// 实际的屏幕尺寸按 UI 给你的图来修改，这里用5.5寸的。
#define KScaleH(c) [[UIScreen mainScreen] bounds].size.width / 414 * c
#define KScaleV(c) [[UIScreen mainScreen] bounds].size.width / 736 * c

#endif /* Macro_h */
