//
//  infoView.m
//  Week 2 Practices
//
//  Created by Annis Dan on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "infoView.h"
#import "ViewController.h"

@implementation infoView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)onClose:(id)sender
{
    //::::::::::RETURNS TO THE PREVIOUS VIEW::::::::::::::::
    
    [self dismissModalViewControllerAnimated:TRUE];
    
}



@end
