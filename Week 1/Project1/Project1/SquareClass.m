//
//  SquareClass.m
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import "SquareClass.h"
#import "ShapeClass.h"

@implementation SquareClass

-(id)init
{
    if (self = [super init])
    {
        shapetype = 0;
        shapename = @"Square";
        base = 2;
        height= 2;
        numSides = 4;
    }
    return self;
}
@end
