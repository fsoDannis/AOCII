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
// LABEL FOR MY PROJECT INFO
    topLine = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 39.0f, 320.0f, 1.0f)];
    topLine.backgroundColor = [UIColor  whiteColor];
    [self.view addSubview:topLine];
    projectInfo = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 320.0f, 50.0f)];
    projectInfo.backgroundColor = [UIColor  blackColor];
    [self.view addSubview:projectInfo];
    projectInfo.text = @"Dan Annis - AOC II: Project 1";
    projectInfo.textAlignment=UITextAlignmentCenter;
    projectInfo.backgroundColor=[UIColor myIndigo];
    projectInfo.textColor= [UIColor whiteColor ];
    bottomLine = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 90.0f, 320.0f, 1.0f)];
    bottomLine.backgroundColor = [UIColor  whiteColor];
    [self.view addSubview:bottomLine];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
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
