//
//  EventPage.m
//  eventPlanner
//
//  Created by Annis Dan on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EventPage.h"
#import "ViewController.h"

@interface EventPage ()

@end

@implementation EventPage

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)info:(id)sender
{
    EventPage *info = [[EventPage alloc] initWithNibName:@"EventPage" bundle:nil];
    if (info != nil)
    {
        [self presentModalViewController:info animated:TRUE];
    }
}
-(IBAction)addEvent:(id)sender
{
    
}

@end
