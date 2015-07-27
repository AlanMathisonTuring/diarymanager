//
//  BSMoreController.m
//  diarymanage
//
//  Created by 吴新超 on 15/6/24.
//  Copyright (c) 2015年 wuxinchao. All rights reserved.
//

#import "BSMoreController.h"
#import "MBProgressHUD+NJ.h"
@interface BSMoreController ()

@end

@implementation BSMoreController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"第%d组，第%d行",indexPath.section,indexPath.row);
    if(indexPath.section == 2){
        if(indexPath.row == 0){
            [MBProgressHUD showMessage:@"正在拼命加载..."];
            [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(newVesion) userInfo:@"..." repeats:NO];
        }
        
    }
}

-(void)newVesion{
    [MBProgressHUD hideHUD];
    [MBProgressHUD showSuccess:@"当前已是最新版本"];
}

@end
