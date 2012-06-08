//
//  ViewController.m
//  Week 2 Practices
//
//  Created by Annis Dan on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"

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

-(IBAction)addSubtract:(id)sender
{
 	if (addSubtract == 0) result = currentNumber;
	else {
		switch (addSubtract) {
			case 1:
				result = result + currentNumber;
				break;
			case 2:
				result = result - currentNumber;
				break;
			case 3:
				break;
		}
	}
	currentNumber = 0;
	Output.text = [NSString stringWithFormat:@"%.1f",result];
	addSubtract = [sender tag];
}

-(IBAction)onClick:(id)sender
{
        currentNumber = currentNumber*10 + (float)[sender tag];
        Output.text = [NSString stringWithFormat:@"%.1f",currentNumber];
}
     

-(IBAction)clear:(id)sender
{
    currentNumber = 0;
	Output.text = @"0.0";
	addSubtract = 0;
}

-(IBAction)open:(id)sender
{
    infoViewController *info = [[infoViewController alloc] initWithNibName:@"infoViewController" bundle:nil];
    if (info != nil)
    {
        [self presentModalViewController:info animated:TRUE];
    }
}


@end
