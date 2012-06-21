//  Event Planner - AOC II - Project 3
//  Created by Annis Dan on 6/14/12.

#import "ViewController.h"
#import "eventPage.h"
#import "info.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize swiper;

- (void)viewDidLoad

{
    //Caching current Frame for the Swiper Image. 
    CGRect origSwiperPosition = swiper.frame;
    
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panDetected:)];
    [self.view addGestureRecognizer:panRecognizer];
    
   panRecognizer.delegate = self;
    
    swipeToAdd.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swipe"]];

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

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    
    if(recognizer.direction = UISwipeGestureRecognizerDirectionRight)
    {
        eventPage *load = [[eventPage alloc] initWithNibName:@"eventPage" bundle:nil];
        if (load != nil)
        {
            load.delegate = self; 
            load.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentModalViewController:load animated:TRUE];
        } 

        
        NSLog(@"Swiped Right");
    }
}




#pragma mark - Gesture Recognizers

- (void)panDetected:(UIPanGestureRecognizer *)panRecognizer
{
    CGPoint translation = [panRecognizer translationInView:self.view];
    CGPoint imageViewPosition = self.swiper.center;
    imageViewPosition.x += translation.x;
    //imageViewPosition.y += translation.y;
    
    self.swiper.center = imageViewPosition;
    [panRecognizer setTranslation:CGPointZero inView:self.view];
}



#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}



// My did close... Still trying to figure this out here.. 
-(void)DidClose:(NSString*)eventString
{
    textView.text = [textView.text stringByAppendingString:eventString];
}

@end
