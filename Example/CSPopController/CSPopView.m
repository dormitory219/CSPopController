//
//  CSPopView.m
//  CSPopController_Example
//
//  Created by 余强 on 2018/4/5.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import "CSPopView.h"

@implementation CSPopView

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.backgroundColor = [UIColor colorWithRed:0.1*arc4random_uniform(10) green:0.1*arc4random_uniform(10) blue:0.1*arc4random_uniform(10) alpha:1];
}

+ (instancetype)popView
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil].firstObject;
}

- (IBAction)dismissPopAction:(id)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(dimissPopView:)])
    {
        [self.delegate dimissPopView:self];
    }
}

@end
