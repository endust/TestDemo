//
//  PersonalSettingViewController.m
//  RESideMenuDemo
//
//  Created by He Wei on 5/5/16.
//  Copyright © 2016 Winn.He. All rights reserved.
//

#import "PersonalSettingViewController.h"
#import "RESideMenu.h"

@interface PersonalSettingViewController ()

@end

@implementation PersonalSettingViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Setting";
    [self  initWithUI];
    [self initNavBar];
}

#pragma mark - Acion

- (void)back
{
    [self.sideMenuViewController presentRightMenuViewController];
    [self.navigationController popViewControllerAnimated:NO];
}


#pragma mark -Setter && Getter
- (void)initWithUI
{
    self.view.backgroundColor = [UIColor yellowColor];

}

- (void)initNavBar
{
    UIButton* backBtn = [[UIButton alloc]init];
    backBtn.frame = CGRectMake(0, 0, 24, 26);
    UIImage *image = [UIImage imageNamed:@"back_button"];
    [backBtn setBackgroundImage:image forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* selectedCityBarItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = selectedCityBarItem;
}

@end
