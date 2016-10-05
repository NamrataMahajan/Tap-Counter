//
//  ViewController.m
//  NamTapCounter
//
//  Created by Namrata on 23/09/16.
//  Copyright © 2016 Namrata. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    heightOfScreen=[[UIScreen mainScreen]bounds].size.height;
    widthOfScreen=[[UIScreen mainScreen]bounds].size.height;
    myLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, kHeightOfStatusBar, widthOfScreen, heightOfScreen - kHeightToReduceFrom)];
    myLabel.backgroundColor= [UIColor yellowColor];
    myLabel.textAlignment=NSTextAlignmentCenter;
    myLabel.font=[UIFont systemFontOfSize:60];
    [self.view addSubview:myLabel];
    
    tapButton=[[UIButton alloc]initWithFrame:CGRectMake(0, kHeightOfStatusBar, widthOfScreen, heightOfScreen - kHeightToReduceFrom)];
    [tapButton addTarget:self action:@selector(handleTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tapButton];
    
    displayLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 50, 350, 30)];
    displayLabel.textAlignment=NSTextAlignmentCenter;
    displayLabel.font=[UIFont systemFontOfSize:40];
    [self.view addSubview:displayLabel];
    
    resetButton=[[UIButton alloc]initWithFrame:CGRectMake(0, heightOfScreen-kHeightOfResetButton, widthOfScreen, kHeightOfResetButton)];
    [resetButton addTarget:self action:@selector(handleReset) forControlEvents:UIControlEventTouchUpInside];
    [resetButton setTitle:@"Reset" forState:UIControlStateNormal];
    [resetButton setTitle:@"Reseting......." forState:UIControlStateHighlighted];
    resetButton.backgroundColor=[UIColor redColor];
    [resetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
   // resetButton setTextAlignment=NSTextAlignmentCenter;
    [self.view addSubview:resetButton];
    
    
    
}
-(void)handletap
{
    NSString*currentValueString=myLabel.text;
    currentValueInt=currentValueString.intValue;
    currentValueInt=currentValueInt+1;
    NSString *newValueString=[NSString stringWithFormat:@"%d",currentValueInt];
    myLabel.text=newValueString;
    
}
-(void)handleReset
{
    displayLabel.text=[NSString stringWithFormat:@"Previous Max Count",currentValueInt];
    myLabel.text=@"0";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
