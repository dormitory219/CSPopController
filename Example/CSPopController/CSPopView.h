//
//  CSPopView.h
//  CSPopController_Example
//
//  Created by 余强 on 2018/4/5.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CSPopView;
@protocol CSPopViewDelegate<NSObject>

- (void)dimissPopView:(CSPopView *)popView;

@end

@interface CSPopView : UIView

@property (nonatomic,weak) id<CSPopViewDelegate> delegate;
+ (instancetype)popView;

@end
