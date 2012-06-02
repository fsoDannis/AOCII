//
//  TriangleClass.m
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import "TriangleClass.h"
#import "ShapeClass.h"

@implementation TriangleClass

-(id)init
{
    if (self = [super init])
    {
        shapetype = 1;
        shapename = @"Triangle";
        base = 4;
        height= 6;
        numSides = 3;
    }
    return self;
}
@end
