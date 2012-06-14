//
//  ViewController.m
//  dayPlanner
//
//  Created by Annis Dan on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "eventPage.h"
#import "info.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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

-(IBAction)info:(id)sender
{
    info *infoOpen = [[info alloc] initWithNibName:@"info" bundle:nil];
    if (infoOpen != nil)
    {
        [self presentModalViewController:infoOpen animated:TRUE];
    }
}
-(IBAction)addEvent:(id)sender
{
    eventPage *event = [[eventPage alloc] initWithNibName:@"eventPage" bundle:nil];
    if (event != nil)
    {
        [self presentModalViewController:event animated:TRUE];
    } 
}




@end
