//
//  ViewController.h
//  NamTapCounter
//
//  Created by Namrata on 23/09/16.
//  Copyright © 2016 Namrata. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kHeightOfResetButton 80.0
#define kHeightOfStatusBar 20.0
#define kHeightToReduceFrom (kHeightOfResetButton + kHeightOfStatusBar)

@interface ViewController : UIViewController
{
    UILabel *myLabel;
    UILabel *displayLabel;
    UIButton *tapButton;
    UIButton *resetButton;
    int currentValueInt;
    CGFloat heightOfScreen;
    CGFloat widthOfScreen;
}


@end

