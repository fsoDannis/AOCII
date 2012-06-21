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
    swipeBG.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swipe"]];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void) viewWillAppear:(BOOL)animated
{
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swiper addGestureRecognizer:rightSwipe];
     
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

//My Swipe Gesture with Full Animations
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    [UIView beginAnimations:nil context:nil];
      
    if(recognizer.direction = UISwipeGestureRecognizerDirectionRight)
    {
        
        swipeBG.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swipeD"]];
        swiper.frame = CGRectMake(254.0f, 420.0f, 46.0f, 36.0f);

        eventPage *load = [[eventPage alloc] initWithNibName:@"eventPage" bundle:nil];
        if (load != nil)
        {
            load.delegate = self; 
            load.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentModalViewController:load animated:TRUE];
        } 

        
        NSLog(@"Swiped Right");
    }
     swipeBG.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swipe"]];
     swiper.frame = CGRectMake(16.0f, 420.f, 46.0f, 36.0f);
     
     [UIView commitAnimations];
}

// My did close... Still trying to figure this out here.. 
-(void)DidClose:(NSString*)eventString
{
    textView.text = [textView.text stringByAppendingString:eventString];
}

@end
