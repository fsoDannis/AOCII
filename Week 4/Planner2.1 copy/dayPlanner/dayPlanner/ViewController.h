//  Event Planner - AOC II - Project 3
//  Created by Annis Dan on 6/14/12.

#import <UIKit/UIKit.h>
#import "eventPage.h"

@interface ViewController : UIViewController <EventViewDelegate>
{
    IBOutlet UITextView *textView;
    IBOutlet UIImageView *swiper;
    IBOutlet UILabel *swipeBG;
    IBOutlet UIBarButtonItem  *save;
    UISwipeGestureRecognizer *rightSwipe;
}



-(IBAction)info:(id)sender;
-(IBAction)save:(id)sender;

@end
