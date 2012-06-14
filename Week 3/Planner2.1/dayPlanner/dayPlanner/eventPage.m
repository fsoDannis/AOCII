//
//  eventPage.m
//  dayPlanner
//
//  Created by Annis Dan on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "eventPage.h"

@interface eventPage ()

@end

@implementation eventPage

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


//My Date Picker
-(IBAction)datePicker:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*) sender;
    if(picker !=nil)
    {
        NSDate *date = picker.date;
        
        NSLog(@"date=%@",[date description]);
    }
}
//Keyboard Button - Close... 
-(IBAction)closeKeyboard:(id)sender
{
    [input resignFirstResponder];
}

//Saving the text
-(IBAction)save:(id)sender
{
    NSString *tempString =input.text;
    NSLog(@"%@",tempString);
    [self dismissModalViewControllerAnimated:TRUE];
}
@end
