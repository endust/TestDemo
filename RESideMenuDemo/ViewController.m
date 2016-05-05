//
//  ViewController.m
//  RESideMenuDemo
//
//  Created by He Wei on 5/5/16.
//  Copyright © 2016 Winn.He. All rights reserved.
//

#import "ViewController.h"
#import "PersonalSettingViewController.h"
#import "PersonalCenterController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    
    [self getRightViewControllerEvent];
}



#pragma mark - Response
- (void)back
{
    [self.sideMenuViewController presentRightMenuViewController];
}

//获得右侧划监听
- (void)getRightViewControllerEvent
{
    //设置
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(settingPageShow) name:@"SettingPageShow" object:nil];    
    
}

- (void)settingPageShow
{
    PersonalSettingViewController *setting = [[PersonalSettingViewController alloc] init];
    [self.navigationController pushViewController:setting animated:NO];
}



#pragma mark - Setter && Getter
- (void)initUI
{
    self.view.backgroundColor = [UIColor purpleColor];
    
    UIButton* backBtn = [[UIButton alloc]init];
    backBtn.frame = CGRectMake(self.view.frame.size.width- 100, 0, 24, 26);
    UIImage *image = [UIImage imageNamed:@"PersonalCenter"];
    [backBtn setBackgroundImage:image forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* selectedCityBarItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
    self.navigationItem.rightBarButtonItem = selectedCityBarItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
