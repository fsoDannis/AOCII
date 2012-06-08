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
@synthesize _BGSelector;

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"blue.jpg"]];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self set_BGSelector:nil];
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
    if (switcheroo.on != false)
    {
        currentNumber = currentNumber*10 + (float)[sender tag];
        Output.text = [NSString stringWithFormat:@"%.1f",currentNumber];
    }
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


-(IBAction)skin:(id)sender {
    
    if (BGswitch.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"blue.jpg"]];
        skin.text = [NSString stringWithFormat:@"Re-Activated Blue Skin"];
         skin.textColor = [UIColor blueColor];

        
    }
    
    if (BGswitch.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bubbles.jpg"]];
        skin.text = [NSString stringWithFormat:@"Activated Bubbles Skin"];
        skin.textColor = [UIColor whiteColor];
        
    }
    
    if (BGswitch.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"orange.jpg"]];
        skin.text = [NSString stringWithFormat:@"Activated Orange Skin"];
        skin.textColor = [UIColor orangeColor];

        
    }
    if (BGswitch.selectedSegmentIndex == 3) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pink.jpg"]];
        skin.text = [NSString stringWithFormat:@"Activated Pink Skin"];
        skin.textColor = [UIColor purpleColor];

        
    }
    
} 

-(IBAction)on_Off:(id)sender
{
    if (switcheroo.on)
    {
        
        currentNumber = 0;
        Output.text = @"0";
        addSubtract = 0;
    }
    else
    {
        
        currentNumber = 0;
        Output.text = @"Calculator is Off.. Turn it on!";
        Output.textColor = [UIColor redColor];
        addSubtract = 0;
        
    }
    
}

@end
