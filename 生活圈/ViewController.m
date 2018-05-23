//
//  ViewController.m
//  生活圈
//
//  Created by PW on 2018/5/23.
//  Copyright © 2018年 Oriental Horizon. All rights reserved.
//

#import "ViewController.h"
#import "MomentCell.h"
#import "MomentModel.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>



@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) NSMutableArray *datasaoArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    
    self.tableView  = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 400;
    [self.view addSubview:self.tableView];
    
    [self loadViewData];
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.datasaoArray.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    MomentCell *cell = [MomentCell MomentCellWithTableView:tableView];
    
    cell.model = self.datasaoArray[indexPath.row];
    
    return cell;
}

-(void) loadViewData{
    
    NSArray *array = @[@{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},
                       @{@"name":@"jajjaja",@"des":@"你家那可能能吃苦的南城街道女乘客技能大赛超级女声超级女声超级女声打开才能少年才开始的内存卡三等奖女乘客",@"pic":@"111"},];
    
    for (NSDictionary *dict in array) {
        
        MomentModel *model = [MomentModel modelWithDict:dict];
        NSLog(@"name == %@",model.name);
        [self.datasaoArray addObject:model];
    }
    
    [self.tableView reloadData];
    
}



-(NSMutableArray *) datasaoArray{
    
    if (_datasaoArray == nil) {
        
        _datasaoArray = [NSMutableArray array];
    }
    
    return _datasaoArray;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
