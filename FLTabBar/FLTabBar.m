//
//  FLTabBar.m
//  FLTabBar
//
//  Created by LBH on 2016/6/26.
//  Copyright © 2016年 Felix. All rights reserved.
//

#import "FLTabBar.h"
#import "FLTabBarCenterButton.h"

@interface FLTabBar ()

@property (nonatomic, strong) FLTabBarCenterButton *centerButton;
@end

@implementation FLTabBar
- (FLTabBarCenterButton *)centerButton {
    if (!_centerButton) {
        FLTabBarCenterButton *centerButton = [[FLTabBarCenterButton alloc] init];
        [centerButton setImage:[UIImage imageNamed:self.imageName] forState:UIControlStateNormal];
        [centerButton setImage:[UIImage imageNamed:self.selectedImageName] forState:UIControlStateHighlighted];
        [centerButton addTarget:self action:@selector(centerButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [centerButton setTitle:self.title forState:UIControlStateNormal];
        self.centerButton = centerButton;
    }
    return _centerButton;
}

- (instancetype)initWithTitle:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName{
    self = [super init];
    if (self) {
        _title = title;
        _imageName = imageName;
        _selectedImageName = selectedImageName;
        
        [self addSubview:self.centerButton];
    }
    return self;
}

- (void)centerButtonClick {
    if (self.additionButtonTapAction) {
        self.additionButtonTapAction(self);
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect rect = self.bounds;
    CGFloat w = rect.size.width / self.items.count - 1;
    self.centerButton.frame = CGRectInset(rect, 2 * w, 10);
    [self bringSubviewToFront:self.centerButton];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (self.clipsToBounds || self.hidden || (self.alpha == 0.f)) {
        return nil;
    }
    
    CGPoint newPoint = [self convertPoint:point toView:self.centerButton.imageView];
    
    if ( [self.centerButton.imageView pointInside:newPoint withEvent:event]) {
        return self.centerButton;
        
    }else{
        return [super hitTest:point withEvent:event];
    }


    return [super hitTest:point withEvent:event];
}

@end
