//  Event Planner - AOC II - Project 3
//  Created by Annis Dan on 6/14/12.

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


//Opening a flip page for the information
-(IBAction)info:(id)sender
{
    info *infoOpen = [[info alloc] initWithNibName:@"info" bundle:nil];
    if (infoOpen != nil)
    {
        infoOpen.modalTransitionStyle = UIModalTransitionStylePartialCurl;
        [self presentModalViewController:infoOpen animated:TRUE];
    }
}


//Opening a page with a different transistion
-(IBAction)addEvent:(id)sender
{
    eventPage *event = [[eventPage alloc] initWithNibName:@"eventPage" bundle:nil];
    if (event != nil)
    {
        event.delegate = self; 
        event.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentModalViewController:event animated:TRUE];
    } 
}


// My did close... Still trying to figure this out here.. 
-(void)DidClose:(NSString*)eventString
{
    textView.text = [textView.text stringByAppendingString:eventString];
}

@end
