//
//  eventPage.h
//  dayPlanner
//
//  Created by Annis Dan on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol EventViewDelegate <NSObject>
@required
-(void)DidClose:(NSString*)eventString;


@end


@interface eventPage : UIViewController <UITextFieldDelegate>

{
    id<EventViewDelegate> delegate;
    
    IBOutlet UITextField *input;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UIDatePicker *datePicker;
    NSString *myDate;
    NSString *eventString;

}
@property (strong) id<EventViewDelegate> delegate;
-(IBAction)closeKeyboard:(id)sender;
-(IBAction)datePicker:(id)sender;
-(IBAction)save:(id)sender;

@end