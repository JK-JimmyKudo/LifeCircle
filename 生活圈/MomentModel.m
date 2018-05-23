//
//  MomentModel.m
//  生活圈
//
//  Created by PW on 2018/5/23.
//  Copyright © 2018年 Oriental Horizon. All rights reserved.
//

#import "MomentModel.h"

@implementation MomentModel

+(instancetype) modelWithDict:(NSDictionary *)dict{
    
    MomentModel *model = [[MomentModel alloc] init];
    
    [model setValuesForKeysWithDictionary:dict];
    
    return model;
}

-(void) setValue:(id)value forUndefinedKey:(NSString *)key{}

@end
