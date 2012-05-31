//
//  ViewController.m
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import "ViewController.h"
#import "ShapeFactory.h"
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"
#import "RectangleClass.h"
#include "UICustomColors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // LABEL FOR MY INFORMATION
    projectInfo = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 300.0f, 50.0f)];
    projectInfo.backgroundColor = [UIColor  blackColor];
    [self.view addSubview:projectInfo];
    projectInfo.text = @"Dan Annis - 6/1/2012 - Project 1";
    projectInfo.textAlignment=UITextAlignmentCenter;
    projectInfo.backgroundColor=[UIColor myIndigo];
    projectInfo.textColor= [UIColor blackColor];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)viewWillAppear:(BOOL)animated
{
    
    // SETTING BACKGROUND COLOR
    self.view.backgroundColor=[UIColor blackColor];
    
    [super viewWillAppear:animated];
    
}
@end
