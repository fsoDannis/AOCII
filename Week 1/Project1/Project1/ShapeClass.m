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


@end
