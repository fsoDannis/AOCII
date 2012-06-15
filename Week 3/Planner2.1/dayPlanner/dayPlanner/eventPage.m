//
//  eventPage.m
//  dayPlanner
//
//  Created by Annis Dan on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

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
    
// Was wanting to show Date Picker after the text field closes.. Needs a lot of work.. so opted out!
//    UIDatePicker *pv = [[UIDatePicker alloc] initWithFrame:CGRectMake(0,244,0,0)];
//    [self.view addSubview:picker];

}

//Saving (or sending i should say) the text -- Only sends data if they are not blank. 
-(IBAction)save:(id)sender
{
    if((delegate != nil) && (myDate !=nil))
    {
        eventString = [NSString stringWithFormat:@"There is a \"%@\" \n \t on %@ \n \n", input.text, myDate];
        [delegate DidClose:eventString];
        
    }
    [self dismissModalViewControllerAnimated:TRUE];
}
@end
