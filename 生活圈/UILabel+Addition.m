//
//  UILabel+Addition.m
//  生活圈
//
//  Created by PW on 2018/5/23.
//  Copyright © 2018年 Oriental Horizon. All rights reserved.
//

#import "UILabel+Addition.h"

@implementation UILabel (Addition)

+(instancetype) labelWithText:(NSString *)text fontSise:(CGFloat)fontsize color:(UIColor *)color{
    
    
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.text = text;
    label.font = [UIFont systemFontOfSize:fontsize];
    label.textColor = color;
    
    
    
    return label;
}

@end
