#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CSPopAnimation.h"
#import "CSPopController.h"
#import "CSPopControllerProviderProtocol.h"
#import "CSPopPriorityProtocol.h"
#import "CSPopTheme.h"

FOUNDATION_EXPORT double CSPopControllerVersionNumber;
FOUNDATION_EXPORT const unsigned char CSPopControllerVersionString[];

