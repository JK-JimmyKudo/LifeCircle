//
//  MomentModel.h
//  生活圈
//
//  Created by PW on 2018/5/23.
//  Copyright © 2018年 Oriental Horizon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MomentModel : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *des;
@property (nonatomic,copy) NSString *pic;


+(instancetype) modelWithDict:(NSDictionary *)dict;

@end
