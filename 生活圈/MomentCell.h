//
//  MomentCell.h
//  生活圈
//
//  Created by PW on 2018/5/23.
//  Copyright © 2018年 Oriental Horizon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MomentModel.h"
@interface MomentCell : UITableViewCell

@property (nonatomic,strong) MomentModel *model;


+(instancetype) MomentCellWithTableView:(UITableView *)tableView;



@end
