//  Event Planner - AOC II - Project 3
//  Created by Annis Dan on 6/14/12.

#import "ViewController.h"
#import "eventPage.h"
#import "info.h"

@interface ViewController ()

@end

@implementation ViewController

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


-(IBAction)save:(id)sender
{
    if ([textView.text isEqualToString:@""]){
        [self displayAlertWithString:@"You must create an Event if you want to save Anything!" andTitle:@"Error"];
    }else{
    
    NSLog(@"save pressed");
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *allEvents = textView.text;
        
        [defaults setObject:allEvents forKey:@"myEvents"];
        //actually saving the data
        [defaults synchronize];
    [self displayAlertWithString:@"Your Data was Saved!" andTitle:@"Alert"];
    }
}

//UIAlertView
-(void)displayAlertWithString:(NSString *)string andTitle:(NSString *)title{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:string delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}




- (void)viewDidLoad

{    
    swipeBG.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swipe"]];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *nameString = [defaults objectForKey:@"myEvents"];
    if(nameString.length >0){
        
        
        textView.text = nameString;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)clear:(id)sender
{
    
    [[NSUserDefaults standardUserDefaults] setPersistentDomain:[NSDictionary dictionary] forName:[[NSBundle mainBundle]bundleIdentifier]];
    textView.text = @"";
    
      [self displayAlertWithString:@"You're data has been Wiped!" andTitle:@"Alert"];
    
}


@end
