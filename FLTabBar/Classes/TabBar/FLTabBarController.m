//
//  FLTabBarController.m
//  FLTabBar
//
//  Created by LBH on 2016/6/26.
//  Copyright © 2016年 Felix. All rights reserved.
//

#import "FLTabBarController.h"

#import "FLTabBar.h"
@interface FLTabBarController ()
@property (nonatomic, strong) NSArray* tabItems;
@end

@implementation FLTabBarController

- (instancetype)initWithTabItems:(NSArray *)items{
    self = [super init];
    if (self) {
        [self setTabItems:items];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setTabItems:(NSArray *)tabItems{
    for (FLObject* tabItem in tabItems) {
        if (tabItem.isCustomImageView) {
            FLTabBar *myTabBar = [[FLTabBar alloc] initWithTitle:tabItem.title imageName:tabItem.imageName selectedImageName:tabItem.seletedImageName];
            
            __weak typeof(self) weakSelf = self;
            myTabBar.additionButtonTapAction = ^(id sender){
                [weakSelf setSelectedViewController:tabItem.viewController];
            };
            
            [self addChildViewController:tabItem.viewController];
            [self setValue:myTabBar forKey:@"tabBar"];
        }else{
            [self setChildViewControll:tabItem.viewController title:tabItem.title imageName:tabItem.imageName selectedImageName:tabItem.seletedImageName];
        }
        
    }
}

- (void)setChildViewControll:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {
    childVc.tabBarItem.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = selectedImage;
    
    [self addChildViewController:childVc];
}



@end
