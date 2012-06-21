//  Event Planner - AOC II - Project 3
//  Created by Annis Dan on 6/14/12.

#import "info.h"
#import "eventPage.h"
#import "ViewController.h"

@interface info ()

@end

@implementation info

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

//Close the modal window
-(IBAction)close:(id)sender
{
[self dismissModalViewControllerAnimated:TRUE];
}

@end
