//
//  eventPage.h
//  dayPlanner
//
//  Created by Annis Dan on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface eventPage : UIViewController

{
    IBOutlet UITextField *input;
    IBOutlet UIButton *closeKeyboard;
    NSString *myDate;
    IBOutlet UIDatePicker *datePicker;
}
-(IBAction)closeKeyboard:(id)sender;
-(IBAction)datePicker:(id)sender;
-(IBAction)save:(id)sender;
@end
