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
    IBOutlet UISwitch *switcheroo;
    IBOutlet UISegmentedControl *BGswitch;
}
@property (weak, nonatomic) IBOutlet UISegmentedControl *_BGSelector;

-(IBAction)onClick:(id)sender;
-(IBAction)addSubtract:(id)sender;
-(IBAction)clear:(id)sender;
-(IBAction)open:(id)sender;
-(IBAction)skin:(id)sender;
-(IBAction)on_Off:(id)sender;

@end
