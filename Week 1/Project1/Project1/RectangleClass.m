//
//  RectangleClass.m
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import "RectangleClass.h"
#import "ShapeClass.h"

@implementation RectangleClass

//Giving the rectangle some life. This information will go inside the shape class do its things. Return values. Check itself inside the factory, and print to my label... Hopefully!
-(id)init
{
    if (self = [super init])
    {
        shapetype = 2;
        shapename = @"Rectangle";
        base = 20;
        height= 25;
        numSides = 4;
    }
    return self;
}
@end
