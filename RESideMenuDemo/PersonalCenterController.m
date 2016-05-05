//
//  PersonalCenterController.m
//  Egypt
//
//  Created by Action on 15/10/12.
//  Copyright © 2015年 Aril. All rights reserved.
//  个人中心

#import "PersonalCenterController.h"
#import "PersonalSettingViewController.h"



#define kiPhone4 0.4
#define kiPhone6 0.7
#define kiPhone6P 0.5
//--------------手机型号 -------------------
//判断是否为iPhone4的宏
#define iPhone4 ([UIScreen mainScreen].bounds.size.height == 480)
//判断是否为iPhone5的宏
#define iPhone5 ([UIScreen mainScreen].bounds.size.height == 568)
//判断是否为iPhone6的宏
#define iPhone6 ([UIScreen mainScreen].bounds.size.height == 667)
//判断是否为iPhone6P的宏
#define iPhone6P ([UIScreen mainScreen].bounds.size.height == 736)




@interface PersonalCenterController () <UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UIView *logoutView;
@property (nonatomic, weak) IBOutlet UIView *editorInfomationView;
@property (weak, nonatomic) IBOutlet UIView *unLoginBackView;


@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *userInfo;//自我介绍
@property (weak, nonatomic) IBOutlet UIButton *userImageButton;//用户头像

@property (weak, nonatomic) IBOutlet UIImageView *userHeaderImage;



@property (weak, nonatomic) IBOutlet NSLayoutConstraint *userNameTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *phoneCallHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *IconWeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *IconHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *phoneTop;   //centerAutoLayout
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *unLoginTop;

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *rightShowDistance;  // 距左侧距离
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *settingCellHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *myActionHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *myClassHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *myWaltHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *myFavoriteHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *myMessageHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *myLogoutHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *IconButtonHeight;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *IconButtonWeight;
@end

@implementation PersonalCenterController

#pragma mark - LifeCycle

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.userNameTop.constant = 8;
    self.unLoginTop.constant = 40;
    self.phoneTop.constant = 65;
    
    [self initUI];
    
}


- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}



#pragma mark - Action
//跳转到登陆界面
- (IBAction)gotoLogin:(UIButton *)sender {
    


}


//编辑个人资料 笔
- (IBAction)editPen:(UIButton *)sender {
    
    
}



//我的相册
- (IBAction)myAlbum:(UIButton *)sender {
}

//我的活动
- (IBAction)myActivity:(UIButton *)sender {
}

//我的钱包
- (IBAction)myWallet:(UIButton *)sender {
    
}

//我的课程
- (IBAction)myCourse:(UIButton *)sender {
    
}

//我的收藏
- (IBAction)myCollection:(UIButton *)sender {
    
}

//我的消息
- (IBAction)myMessage:(UIButton *)sender {
    
}

//客服电话
- (IBAction)call:(UIButton *)sender {

}



//设置
- (IBAction)setting:(UIButton *)sender {
    NSLog(@"设置！！！！");
    
    [self.sideMenuViewController hideMenuViewController];
    // Main界面接收
    [[NSNotificationCenter defaultCenter] postNotificationName:@"SettingPageShow" object:nil];
    
    
}

- (IBAction)exitLogin:(UIButton *)sender {
    
    
    [self.sideMenuViewController setContentViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"contentViewController"]];
    
    [self.sideMenuViewController hideMenuViewController];

    
    
    
}


#pragma mark - Setter && Getter

- (void)initUI
{
    
    self.userImageButton.layer.cornerRadius = 24;
    self.userImageButton.layer.masksToBounds = YES;
    self.userHeaderImage.layer.cornerRadius = 24;
    self.userHeaderImage.layer.masksToBounds = YES;
    
        self.unLoginBackView.hidden = YES;
        self.userName.hidden = NO;
        self.userInfo.hidden = NO;
        self.userImageButton.hidden = NO;
        self.userHeaderImage.hidden = NO;
        //心情
    
    
    if (iPhone4) {
        self.userNameTop.constant = self.userNameTop.constant * kiPhone4 + 4;
        self.unLoginTop.constant = self.unLoginTop.constant *kiPhone4 + 5;
        self.phoneTop.constant = 50;
        self.phoneCallHeight.constant = 80;
        
        self.myActionHeight.constant = 35;
        self.myClassHeight.constant = 35;
        self.settingCellHeight.constant = 35;
        self.myFavoriteHeight.constant = 35;
        self.myWaltHeight.constant = 35;
        self.myMessageHeight.constant = 35;
        self.myLogoutHeight.constant = 35;
        
        
    }
    
    if (iPhone6) {
        self.userNameTop.constant /= kiPhone6;
        self.unLoginTop.constant /= kiPhone6;
        self.phoneTop.constant = 100;
        self.IconHeight.constant = 65;
        self.IconWeight.constant = 65;
        self.phoneCallHeight.constant = 110;
        self.rightShowDistance.constant = 80;
        self.userHeaderImage.layer.cornerRadius = 32;
        self.userHeaderImage.layer.masksToBounds = YES;
        self.IconButtonHeight.constant = 65;
        self.IconButtonWeight.constant = 65;
        self.userImageButton.layer.cornerRadius = 32;
        self.userImageButton.layer.masksToBounds = YES;

    }
    
    if (iPhone6P) {
        
        self.rightShowDistance.constant = 90;
        
        self.userNameTop.constant /= kiPhone6P;
        self.unLoginTop.constant /= kiPhone6P;
        self.phoneTop.constant = 90;
        self.IconHeight.constant = 80;
        self.IconWeight.constant = 80;
        self.phoneCallHeight.constant = 110;
        self.userHeaderImage.layer.cornerRadius = 39;
        self.userHeaderImage.layer.masksToBounds = YES;
        self.IconButtonHeight.constant = 80;
        self.IconButtonWeight.constant = 80;

        self.userImageButton.layer.cornerRadius = 1;
        self.userImageButton.layer.masksToBounds = YES;

    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
