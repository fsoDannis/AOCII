//
//  MainViewController.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "MainViewController.h"
#import "InfoViewController.h"


@implementation MainViewController


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
  // UISegmentedControl -> segmentedControl1;
  // ----------------------------;
  
  UISegmentedControl *segmentedControl1 = [[UISegmentedControl alloc] initWithFrame:CGRectMake(10, 420, 300, 30)];
  [contentView addSubview:segmentedControl1];
  segmentedControl1.alpha = 1.0;
  segmentedControl1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  segmentedControl1.enabled = YES;
  segmentedControl1.segmentedControlStyle = UISegmentedControlStyleBar;
  segmentedControl1.selectedSegmentIndex = 0;
  segmentedControl1.tintColor = [UIColor colorWithRed:0.0 green:0.25 blue:0.5 alpha:1.0];
  
  // ----------------------------;
  // Segment -> segment1;
  // ----------------------------;
  
  [segmentedControl1 insertSegmentWithTitle:@"Gray" atIndex:0 animated:NO];
  [segmentedControl1 setWidth:0 forSegmentAtIndex:0];
  
  
  // ----------------------------;
  // Segment -> segment2;
  // ----------------------------;
  
  [segmentedControl1 insertSegmentWithTitle:@"Black" atIndex:1 animated:NO];
  [segmentedControl1 setWidth:0 forSegmentAtIndex:1];
  
  
  // ----------------------------;
  // Segment -> segment3;
  // ----------------------------;
  
  [segmentedControl1 insertSegmentWithTitle:@"White" atIndex:2 animated:NO];
  [segmentedControl1 setWidth:0 forSegmentAtIndex:2];
  
  [segmentedControl1 setSelectedSegmentIndex:-1];
  [segmentedControl1 release];
  
  
  // ----------------------------;
  // UILabel -> label1;
  // ----------------------------;
  
  UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 383, 180, 40)];
  [contentView addSubview:label1];
  label1.alpha = 1.0;
  label1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label1.text = @"Background Color";
  label1.textColor = [UIColor colorWithRed:0.0 green:0.25 blue:0.5 alpha:1.0];
  label1.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  label1.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label1.textAlignment = UITextAlignmentLeft;
  label1.shadowOffset = CGSizeMake(1, 1);
  label1.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:25.0];
  [label1 release];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton1;
  // ----------------------------;
  
  UIButton *roundedRectButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton1.frame = CGRectMake(20, 230, 50, 50);
  [contentView addSubview:roundedRectButton1];
  roundedRectButton1.alpha = 1.0;
  roundedRectButton1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton1 setTitle:@"1" forState:UIControlStateNormal];
  [roundedRectButton1 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton1.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton2;
  // ----------------------------;
  
  UIButton *roundedRectButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton2.frame = CGRectMake(80, 230, 50, 50);
  [contentView addSubview:roundedRectButton2];
  roundedRectButton2.alpha = 1.0;
  roundedRectButton2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton2 setTitle:@"2" forState:UIControlStateNormal];
  [roundedRectButton2 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton2.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton3;
  // ----------------------------;
  
  UIButton *roundedRectButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton3.frame = CGRectMake(140, 230, 50, 50);
  [contentView addSubview:roundedRectButton3];
  roundedRectButton3.alpha = 1.0;
  roundedRectButton3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton3 setTitle:@"3" forState:UIControlStateNormal];
  [roundedRectButton3 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton3.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton4;
  // ----------------------------;
  
  UIButton *roundedRectButton4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton4.frame = CGRectMake(20, 170, 50, 50);
  [contentView addSubview:roundedRectButton4];
  roundedRectButton4.alpha = 1.0;
  roundedRectButton4.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton4 setTitle:@"4" forState:UIControlStateNormal];
  [roundedRectButton4 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton4.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton5;
  // ----------------------------;
  
  UIButton *roundedRectButton5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton5.frame = CGRectMake(80, 170, 50, 50);
  [contentView addSubview:roundedRectButton5];
  roundedRectButton5.alpha = 1.0;
  roundedRectButton5.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton5 setTitle:@"5" forState:UIControlStateNormal];
  [roundedRectButton5 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton5.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton6;
  // ----------------------------;
  
  UIButton *roundedRectButton6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton6.frame = CGRectMake(140, 170, 50, 50);
  [contentView addSubview:roundedRectButton6];
  roundedRectButton6.alpha = 1.0;
  roundedRectButton6.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton6 setTitle:@"6" forState:UIControlStateNormal];
  [roundedRectButton6 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton6.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton7;
  // ----------------------------;
  
  UIButton *roundedRectButton7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton7.frame = CGRectMake(140, 110, 50, 50);
  [contentView addSubview:roundedRectButton7];
  roundedRectButton7.alpha = 1.0;
  roundedRectButton7.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton7 setTitle:@"9" forState:UIControlStateNormal];
  [roundedRectButton7 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton7.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton8;
  // ----------------------------;
  
  UIButton *roundedRectButton8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton8.frame = CGRectMake(80, 110, 50, 50);
  [contentView addSubview:roundedRectButton8];
  roundedRectButton8.alpha = 1.0;
  roundedRectButton8.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton8 setTitle:@"8" forState:UIControlStateNormal];
  [roundedRectButton8 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton8.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton9;
  // ----------------------------;
  
  UIButton *roundedRectButton9 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton9.frame = CGRectMake(20, 110, 50, 50);
  [contentView addSubview:roundedRectButton9];
  roundedRectButton9.alpha = 1.0;
  roundedRectButton9.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton9 setTitle:@"7" forState:UIControlStateNormal];
  [roundedRectButton9 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton9.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton10;
  // ----------------------------;
  
  UIButton *roundedRectButton10 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton10.frame = CGRectMake(20, 290, 110, 40);
  [contentView addSubview:roundedRectButton10];
  roundedRectButton10.alpha = 1.0;
  roundedRectButton10.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton10 setTitle:@"0" forState:UIControlStateNormal];
  [roundedRectButton10 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton10.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton11;
  // ----------------------------;
  
  UIButton *roundedRectButton11 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton11.frame = CGRectMake(20, 340, 280, 40);
  [contentView addSubview:roundedRectButton11];
  roundedRectButton11.alpha = 1.0;
  roundedRectButton11.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton11 setTitle:@"Clear" forState:UIControlStateNormal];
  [roundedRectButton11 setTitleColor:[UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton11.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton12;
  // ----------------------------;
  
  UIButton *roundedRectButton12 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton12.frame = CGRectMake(250, 110, 50, 100);
  [contentView addSubview:roundedRectButton12];
  roundedRectButton12.alpha = 1.0;
  roundedRectButton12.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton12 setTitle:@"+" forState:UIControlStateNormal];
  [roundedRectButton12 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton12.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton13;
  // ----------------------------;
  
  UIButton *roundedRectButton13 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton13.frame = CGRectMake(250, 230, 50, 100);
  [contentView addSubview:roundedRectButton13];
  roundedRectButton13.alpha = 1.0;
  roundedRectButton13.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton13 setTitle:@"=" forState:UIControlStateNormal];
  [roundedRectButton13 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton13.titleLabel.font = [UIFont fontWithName:@"Optima-Regular" size:21.0];
  
  
  // ----------------------------;
  // UISwitch -> switch1;
  // ----------------------------;
  
  UISwitch *switch1 = [[UISwitch alloc] init];
  [switch1 sizeToFit];
  CGRect switch1Rect = switch1.frame;
  switch1Rect.origin.x = 241;
  switch1Rect.origin.y =  10;
  switch1.frame = switch1Rect;
  [contentView addSubview:switch1];
  switch1.alpha = 1.0;
  switch1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  switch1.on = YES;
  switch1.enabled = YES;
  switch1.onTintColor = [UIColor colorWithRed:0.0 green:0.25 blue:0.5 alpha:1.0];
  [switch1 release];
  
  
  // ----------------------------;
  // UITextField -> textField1;
  // ----------------------------;
  
  UITextField *textField1 = [[UITextField alloc] initWithFrame:CGRectMake(20, 55, 280, 43)];
  [contentView addSubview:textField1];
  textField1.alpha = 1.0;
  textField1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  textField1.text = @"";
  textField1.borderStyle = UITextBorderStyleRoundedRect;
  textField1.textAlignment = UITextAlignmentLeft;
  textField1.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
  textField1.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  textField1.font = [UIFont fontWithName:@"Helvetica" size:17.0];
  [textField1 release];
  
  
  // ----------------------------;
  // UIButton -> lightInfoButton14;
  // ----------------------------;
  
  UIButton *lightInfoButton14 = [UIButton buttonWithType:UIButtonTypeInfoLight];
  CGRect lightInfoButton14Rect = lightInfoButton14.frame;
  lightInfoButton14Rect.origin.x = 266;
  lightInfoButton14Rect.origin.y =  394;
  lightInfoButton14.frame = lightInfoButton14Rect;
  [contentView addSubview:lightInfoButton14];
  lightInfoButton14.alpha = 1.0;
  lightInfoButton14.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [lightInfoButton14 addTarget:self action:@selector(didTap_lightInfoButton14:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
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
// Action
// ----------------

- (void)didTap_lightInfoButton14:(id)sender forEvent:(UIEvent *)event {
  InfoViewController *controller = [[InfoViewController alloc] init];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
  [navigationController setNavigationBarHidden:YES animated:NO];
  navigationController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
  navigationController.modalPresentationStyle = UIModalPresentationFormSheet;
  [self presentModalViewController:navigationController animated:YES];
  [navigationController release];
  [controller release];
}




@end