//
//  ViewController.h
//  Week 2 Practices
//
//  Created by Annis Dan on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "infoViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel *Output;
    float result;
    float currentNumber;
    int addSubtract;
    IBOutlet UILabel *skin;
}

typedef enum
{
    Image1=0,
    Image2,
    Image3,
    Image4
}bgColor;

-(IBAction)onClick:(id)sender;
-(IBAction)addSubtract:(id)sender;
-(IBAction)clear:(id)sender;
-(IBAction)open:(id)sender;
-(IBAction)skin:(id)sender;

@end
