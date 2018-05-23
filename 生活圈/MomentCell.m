//
//  MomentCell.m
//  生活圈
//
//  Created by PW on 2018/5/23.
//  Copyright © 2018年 Oriental Horizon. All rights reserved.
//

#import "MomentCell.h"
#import "UILabel+Addition.h"
#import "Masonry.h"
@interface MomentCell()



@property (nonatomic,strong) UIImageView *iconView;
@property (nonatomic,strong) UIImageView *pictureView;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *contentLabel;
@property (nonatomic,strong) UILabel *timeLabel;

@property (nonatomic,strong) UIButton *deleteButton;
@property (nonatomic,strong) UIButton *moreButton;
@end


@implementation MomentCell

+(instancetype) MomentCellWithTableView:(UITableView *)tableView{
    
    static NSString *inderfier = @"MomentCell";
    MomentCell *cell = [tableView dequeueReusableCellWithIdentifier:inderfier];
    
    if (cell == nil) {
        cell = [[MomentCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:inderfier];
    }
    return cell;
}


-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.iconView = [[UIImageView alloc] init];
        
        [self.contentView addSubview:self.iconView];
        
        
        self.nameLabel = [UILabel labelWithText:nil fontSise:14 color:[UIColor blackColor]];
        
        [self.contentView addSubview:self.nameLabel];
                            
        
        self.contentLabel = [UILabel labelWithText:nil fontSise:14 color:[UIColor blackColor]];
        
        [self.contentView addSubview:self.contentLabel];
        
        self.pictureView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.pictureView];
        
        
        
        self.timeLabel = [UILabel labelWithText:nil fontSise:14 color:[UIColor blackColor]];
        [self.contentView addSubview:self.timeLabel];
        
        
        self.deleteButton = [[UIButton alloc] init];
        [self.deleteButton setTitle:@"删除" forState:UIControlStateNormal];
        [self.deleteButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.deleteButton.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.deleteButton];
        
        self.moreButton = [[UIButton alloc] init];
        [self.moreButton setTitle:@"更多" forState:UIControlStateNormal];
        [self.moreButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.moreButton.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.moreButton];
        
        self.iconView.backgroundColor = [UIColor redColor];
        [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.mas_equalTo(8);
            make.width.height.mas_equalTo(40);
        }];
        
        self.nameLabel.text = @"哈哈哈哈哈哈哈";
        [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.iconView);
            make.left.mas_equalTo(self.iconView.mas_right).offset(8);
        }];
        
        self.contentLabel.text = @"大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次大客车的长处懒得猜你的三次";
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.mas_equalTo(self.nameLabel);
            make.top.mas_equalTo(self.nameLabel.mas_bottom).offset(8);
            make.right.mas_equalTo(self).offset(-8);
        }];
        
        self.pictureView.backgroundColor = [UIColor redColor];
        self.pictureView.image = [UIImage imageNamed:@"111"];
        [self.pictureView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.nameLabel);
            make.top.mas_equalTo(self.contentLabel.mas_bottom).offset(8);
//            设置最小的宽度
            make.height.mas_lessThanOrEqualTo(150);
//            make.width.mas_equalTo(200);
        }];
        
        
        self.timeLabel.text = @"今天";
        [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.nameLabel);
            make.top.mas_equalTo(self.pictureView.mas_bottom).offset(8);
            
        }];
        
        [self.deleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.timeLabel.mas_right).offset(8);
//            设置对其方式
            make.baseline.mas_equalTo(self.timeLabel);
        }];
        
        
        [self.moreButton mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.mas_equalTo(self).offset(-8);
            make.top.mas_equalTo(self.deleteButton);
            make.baseline.mas_equalTo(self.deleteButton);
        }];
        
        [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
            make.bottom.mas_equalTo(self.moreButton.mas_bottom).offset(8);
        }];
        
    }
    
    return self;
}


-(void) setModel:(MomentModel *)model{
    
    self.nameLabel.text = model.name;
    self.contentLabel.text = model.des;
    
    if (model.pic ) {
        
        UIImage *image = [UIImage imageNamed:model.pic];
//        显示的宽度/实际的宽度 = 显示的高度/实际的高度
        CGFloat width = 150/image.size.height * image.size.height;
        self.pictureView.image = [UIImage imageNamed:model.pic];
        [self.pictureView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(width);
        }];
        
    }else{
        self.pictureView.image = nil;
    }
    
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
