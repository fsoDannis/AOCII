//
//  ShapeClass.m
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import "ShapeClass.h"

@implementation ShapeClass

//Initial Initialization. Dummy values are entered and will be overwritten inside the individual classes. The only one that is not Dummy text is the ShapType. There are 3. 
-(id)init
{
    self = [super init];
    if(self != nil)
        {
        shapetype = 3;
        shapename = @"There is no Spoon";
        numSides = 666;
        base= 666;
        height = 666;
        area = 666;
        }
    return self;
};

//Added Method to keep it out of the seperate classes. Shae helped with this one. 
-(void)setBase:(int)newBase
{
    base = newBase;
}

//Added Method to keep it out of the seperate classes. Shae helped with this one. 
-(void)setHeight:(int)newHeight
{
    height=newHeight;
}

//This will return the numSides from the factory
-(int)GetNumSides{return numSides;}

//This will return the name of whichever is called in the factory
-(NSString*)GetName{return shapename;}

//This will retun the area of the shape called from the factory. exception Triangle which will have to be overwritten. 
-(int)GetArea{area=(base*height);return area;}


@end
