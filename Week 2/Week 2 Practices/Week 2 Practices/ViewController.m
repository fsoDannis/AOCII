//
//  ViewController.m
//  Week 2 Practices
//
//  Created by Annis Dan on 6/4/12.
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

-(IBAction)result:(id)sender
{

}


-(IBAction)add:(id)sender
{
 //If this button is pressed then enable the equal button.
           doWork.enabled=true;
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button!=nil)
    {
        if(button.tag==0)
        {
            NSLog(@"You pressed 0");
        }else if (button.tag==1)
        {
            NSLog(@"You pressed 1");
        }else if (button.tag==2)
        {
            NSLog(@"You pressed 2");
        }else if (button.tag==3)
        {
            NSLog(@"You pressed 3");
        }else if (button.tag==4)
        {
            NSLog(@"You pressed 4");
        }else if (button.tag==5)
        {
            NSLog(@"You pressed 5");
        }else if (button.tag==6)
        {
            NSLog(@"You pressed 6");
        }else if (button.tag==7)
        {
            NSLog(@"You pressed 7");
        }else if (button.tag==8)
        {
            NSLog(@"You pressed 8");
        }else if (button.tag==9)
        {
            NSLog(@"You pressed 9");
        }
    } 
}

-(IBAction)clear:(id)sender
{
    
}
@end
