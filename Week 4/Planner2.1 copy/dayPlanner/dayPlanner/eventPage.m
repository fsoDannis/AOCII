//  Event Planner - AOC II - Project 3
//  Created by Annis Dan on 6/14/12.


#import "eventPage.h"
#import "ViewController.h"
#import "info.h"

@interface eventPage ()  

@end

@implementation eventPage

@synthesize delegate;

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
    swipeCloseLabel.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swipeClose"]];

    [datePicker setMinimumDate:[NSDate date]];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated
{
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swiperClose addGestureRecognizer:leftSwipe];
    
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


//Text functions

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    input.text = [NSString stringWithString:@""];
    return true;
}

//My Date Picker
-(IBAction)datePicker:(id)sender
{
   
    UIDatePicker *picker = (UIDatePicker*) sender;
    [picker setMinimumDate:[NSDate date]];
    if(picker !=nil)
    {
        NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
        if (formatDate != nil) {
            [formatDate setDateFormat:@"MMMM dd, @ h:mm a"];
        }
        myDate = [formatDate stringFromDate:picker.date];
        NSLog(@"%@", myDate);
    }
}

// Do not like the return button saving the data because they need to pick a date first....
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [input resignFirstResponder];
}

//Keyboard Button - Close... 
-(IBAction)closeKeyboard:(id)sender
{
    [input resignFirstResponder];
}


//Swiping function
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    [UIView beginAnimations:nil context:nil];
    
    if(recognizer.direction = UISwipeGestureRecognizerDirectionLeft)
    {
        
        swipeCloseLabel.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swipeCloseD"]];
        swiperClose.frame = CGRectMake(16.0f, 4.0f, 46.0f, 36.0f);
    
        if((delegate != nil) && (myDate !=nil))
        {
            eventString = [NSString stringWithFormat:@"There is a \"%@\" \n \t on %@ \n \n", input.text, myDate];
            [delegate DidClose:eventString];
            
        }
        [self dismissModalViewControllerAnimated:TRUE];
        
        NSLog(@"Swiped Left");
    }
    swipeCloseLabel.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"swipeClose"]];
    swiperClose.frame = CGRectMake(190.0f,4.f, 46.0f, 36.0f);
    
    [UIView commitAnimations];

    }
@end
