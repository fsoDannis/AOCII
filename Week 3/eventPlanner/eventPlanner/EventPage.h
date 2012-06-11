//
//  EventPage.h
//  eventPlanner
//
//  Created by Annis Dan on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface EventPage : UIViewController
{
    IBOutlet UITextView *textView;
    
}
-(IBAction)info:(id)sender;
-(IBAction)addEvent:(id)sender;

@end
