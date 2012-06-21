//  Event Planner - AOC II - Project 3
//  Created by Annis Dan on 6/14/12.

#import <UIKit/UIKit.h>
#import "eventPage.h"

@interface ViewController : UIViewController <EventViewDelegate>
{
    IBOutlet UITextView *textView;
    IBOutlet UILabel *swipeToAdd;

}
@property (weak, nonatomic) IBOutlet UIImageView *swiper;
-(IBAction)info:(id)sender;
-(IBAction)addEvent:(id)sender;

@end
