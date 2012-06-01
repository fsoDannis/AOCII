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
-(id)init
{
    if (self = [super init])
    {
        numSides=4;
        nameString = @"Rectangle";
    }
    return self;
}
@end
