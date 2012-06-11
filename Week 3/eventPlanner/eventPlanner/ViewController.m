//
//  ViewController.m
//  eventPlanner
//
//  Created by Annis Dan on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

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
