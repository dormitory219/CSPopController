//
//  CSViewController.m
//  CSPopController
//
//  Created by dormitory219 on 04/05/2018.
//  Copyright (c) 2018 dormitory219. All rights reserved.
//

#import "CSViewController.h"
#import <CSPopController/CSPopController.h>
#import "CSPopView.h"

@interface CSViewController ()<CSPopViewDelegate>

@property (nonatomic,strong) CSPopController *popController;

@end

@implementation CSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showPop1:(id)sender
{
  CSPopTheme *theme = [[CSPopTheme alloc] init]; theme.maskTypeTheme(CSPopThemeMaskTypeDimmed).cornerRadiusTheme(16.0f).maxPopupWidthTheme(280.0f).animationPresentionDurationTheme(0.3f).animationDismissDurationTheme(0.3f).shouldDismissOnBackgroundTouchTheme(NO).popThemePresentationStyleTheme(CSPPopThemePresentationStyleFadeIn).popThemeDismissStyleTheme(CSPPopThemeDismissStyleFadeOut).horizontalOffsetTheme(0.f).verticalOffsetTheme(0.f);
    
    CSPopView *popView = [CSPopView popView];
    popView.delegate = self;
    self.popController = [[CSPopController alloc] initWithContent:popView];
    
    self.popController.theme = theme;
    [self.popController presentPopControllerAnimated:YES];
}

- (IBAction)showPop2:(id)sender
{
    CSPopTheme *theme = [[CSPopTheme alloc] init]; theme.maskTypeTheme(CSPopThemeMaskTypeDimmed).cornerRadiusTheme(16.0f).maxPopupWidthTheme(280.0f).animationPresentionDurationTheme(0.45f).animationDismissDurationTheme(0.45f).shouldDismissOnBackgroundTouchTheme(YES).popThemePresentationStyleTheme(CSPPopThemePresentationStyleSlideInFromTop).popThemeDismissStyleTheme(CSPPopThemeDismissStyleSlideInToBottom).horizontalOffsetTheme(0.f).verticalOffsetTheme(0.f);
    
    CSPopView *popView = [CSPopView popView];
    popView.delegate = self;
    self.popController = [[CSPopController alloc] initWithContent:popView];
    
    self.popController.theme = theme;
    [self.popController presentPopControllerAnimated:YES];
}

- (IBAction)showPop3:(id)sender
{
    CSPopTheme *theme = [[CSPopTheme alloc] init]; theme.maskTypeTheme(CSPopThemeMaskTypeDimmed).cornerRadiusTheme(16.0f).maxPopupWidthTheme(280.0f).animationPresentionDurationTheme(0.3f).animationDismissDurationTheme(0.3f).shouldDismissOnBackgroundTouchTheme(NO).popThemePresentationStyleTheme(CSPPopThemePresentationStyleSlideInFromTopAndAngleBounce).popThemeDismissStyleTheme(CSPPopThemeDismissStyleSlideInToBottomAndAngle).horizontalOffsetTheme(0.f).verticalOffsetTheme(-60.f).dismissPointTheme(CGPointMake(100, 60));
    
    CSPopView *popView = [CSPopView popView];
    popView.delegate = self;
    self.popController = [[CSPopController alloc] initWithContent:popView];
    
    self.popController.theme = theme;
    [self.popController presentPopControllerAnimated:YES];
}

- (void)dimissPopView:(CSPopView *)popView
{
    [self.popController dismissPopControllerAnimated:YES];
}

@end
