//  Project2
//
//  Created by Annis Dan on 6/2012.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import "InfoViewController.h"



@implementation InfoViewController


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // ----------------------------;
  // View Controller Root View;
  // ----------------------------;
  
  self.view.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
  contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  
  // ----------------------------;
  // MockTextureView -> textureView1;
  // ----------------------------;
  
  UIView *textureView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 7, 320, 40)];
  UIView *textureView1ContentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
  textureView1ContentView.clipsToBounds = YES;
  textureView1ContentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  [textureView1 addSubview:textureView1ContentView];
  [textureView1ContentView release];
  [contentView addSubview:textureView1];
  textureView1.alpha = 1.0;
  textureView1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  textureView1.backgroundColor = [UIColor colorWithRed:0.67 green:0.67 blue:0.67 alpha:1.0];
  textureView1.layer.cornerRadius = 0.0;
  textureView1.layer.borderWidth = 0.0;
  textureView1.layer.borderColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0].CGColor;
  textureView1.layer.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0].CGColor;
  textureView1.layer.shadowOpacity = 0.0;
  textureView1.layer.shadowRadius = 3.0;
  textureView1ContentView.layer.cornerRadius = 0.0;
  textureView1.layer.shadowOffset = CGSizeMake(0, -3);
  [textureView1 release];
  
  
  // ----------------------------;
  // UIImageView -> imageView1;
  // ----------------------------;
  
  UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 150, 150)];
  [textureView1ContentView addSubview:imageView1];
  imageView1.alpha = 1.0;
  imageView1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  imageView1.contentMode = UIViewContentModeScaleToFill;
  [imageView1 release];
  
  
  // ----------------------------;
  // UINavigationBar -> navigationBar1;
  // ----------------------------;
  
  UINavigationBar *navigationBar1 = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
  navigationBar1.delegate = (id<UINavigationBarDelegate>)self;
  UINavigationItem *navigationBar1BackItem = [[[UINavigationItem alloc] initWithTitle:nil] autorelease];
  UINavigationItem *navigationBar1TopItem = [[[UINavigationItem alloc] initWithTitle:nil] autorelease];
  NSArray *navigationBar1Items = [NSArray arrayWithObjects:navigationBar1BackItem, navigationBar1TopItem, nil];
  [navigationBar1 setItems:navigationBar1Items animated:NO];
  [contentView addSubview:navigationBar1];
  navigationBar1.alpha = 1.0;
  navigationBar1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
  navigationBar1.barStyle = UIBarStyleDefault;
  navigationBar1.topItem.title = @"Information Bar";
  [navigationBar1 setBackgroundImage:[UIImage imageNamed:@"InfoViewController_Image_1.png"] forBarMetrics:UIBarMetricsDefault];
  [navigationBar1 setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
  
  // ----------------------------;
  // Navigation Bar Lef Button -> barButton1;
  // ----------------------------;
  
  UIBarButtonItem *barButton1 = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil] autorelease];
  barButton1.target = self;
  barButton1.action = @selector(didTap_barButton1:forEvent:);
  
  navigationBar1.topItem.hidesBackButton = NO;
  navigationBar1.backItem.backBarButtonItem = barButton1;
  [navigationBar1 release];
  
  
  // ----------------------------;
  // UIImageView -> imageView2;
  // ----------------------------;
  
  UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(46, 62, 228, 177)];
  [contentView addSubview:imageView2];
  imageView2.alpha = 1.0;
  imageView2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  imageView2.image = [UIImage imageNamed:@"InfoViewController_Image_2.png"];
  imageView2.clipsToBounds = YES;
  imageView2.contentMode = UIViewContentModeScaleAspectFill;
  [imageView2 release];
  
  
  // ----------------------------;
  // UILabel -> label1;
  // ----------------------------;
  
  UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(46, 248, 228, 26)];
  [contentView addSubview:label1];
  label1.alpha = 1.0;
  label1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label1.text = @"Hey! It's a good picture...";
  label1.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label1.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  label1.textAlignment = UITextAlignmentCenter;
  label1.shadowOffset = CGSizeMake(0, -1);
  label1.font = [UIFont fontWithName:@"Papyrus-Condensed" size:17.0];
  [label1 release];
  
  
  // ----------------------------;
  // UILabel -> label2;
  // ----------------------------;
  
  UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 296, 320, 80)];
  [contentView addSubview:label2];
  label2.alpha = 1.0;
  label2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label2.text = @"Dan Annis - AOC II - Project 2";
  label2.textColor = [UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0];
  label2.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  label2.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label2.textAlignment = UITextAlignmentCenter;
  label2.shadowOffset = CGSizeMake(0, 1);
  label2.font = [UIFont fontWithName:@"Helvetica" size:17.0];
  [label2 release];
  
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];
  [contentView release];
}

- (void)viewDidUnload {
  [super viewDidUnload];
}

- (void)dealloc {
  [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:animated];
}


// ----------------
// Navigation Bar
// ----------------

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
  [self didTap_barButton1:nil forEvent:nil];
  return NO;
}

// ----------------
// Action
// ----------------

- (void)didTap_barButton1:(id)sender forEvent:(UIEvent *)event {
  [self dismissModalViewControllerAnimated:YES];
}




@end