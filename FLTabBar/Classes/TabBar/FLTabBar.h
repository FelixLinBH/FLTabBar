//
//  FLTabBar.h
//  FLTabBar
//
//  Created by LBH on 2016/6/26.
//  Copyright © 2016年 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FLTabBar : UITabBar
@property (nonatomic, copy) void (^additionButtonTapAction)(id sender);
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *imageName;
@property (nonatomic) NSString *selectedImageName;
- (instancetype)initWithTitle:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName;
@end
