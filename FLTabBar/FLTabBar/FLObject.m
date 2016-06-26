//
//  FLObject.m
//  FLTabBar
//
//  Created by LBH on 2016/6/26.
//  Copyright © 2016年 Felix. All rights reserved.
//

#import "FLObject.h"

@implementation FLObject
-(instancetype)initWithViewController:(id)viewController title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName isCustomImageView:(BOOL)isCustomImageView{
    self = [super init];
    if (self) {
        _viewController = viewController;
        _title = title;
        _imageName = imageName;
        _seletedImageName = selectedImageName;
        _isCustomImageView = isCustomImageView;
    }
    return self;
}
@end
