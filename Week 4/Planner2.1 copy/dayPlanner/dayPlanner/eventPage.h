//  Event Planner - AOC II - Project 3
//  Created by Annis Dan on 6/14/12.

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
    IBOutlet UILabel *swipeCloseLabel;
    IBOutlet UIImageView *swiperClose;
    
    UISwipeGestureRecognizer *leftSwipe;

}

@property (strong) id<EventViewDelegate> delegate;

-(IBAction)closeKeyboard:(id)sender;
-(IBAction)datePicker:(id)sender;

@end