//
//  FLObject.h
//  FLTabBar
//
//  Created by LBH on 2016/6/26.
//  Copyright © 2016年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FLObject : NSObject
@property (nonatomic, strong) id viewController;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *imageName;
@property (nonatomic) NSString *seletedImageName;
@property (nonatomic) BOOL isCustomImageView;
-(instancetype)initWithViewController:(id)viewController title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName isCustomImageView:(BOOL)isCustomImageView;
@end
