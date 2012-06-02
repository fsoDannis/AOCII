//
//  ShapeFactory.m
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import "ShapeFactory.h"
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"
#import "RectangleClass.h"

@implementation ShapeFactory

//The Factory seeks the class and returns it's data in the init function. 
+(ShapeClass*)CreateShape : (NSInteger)shapeID;
{
    if(shapeID == 0){
        return [[SquareClass alloc] init];
    } 
    else if (shapeID == 1){
        return [[TriangleClass alloc] init];
    } 
    else if (shapeID == 2){
        return [[RectangleClass alloc] init];
    }
    return nil;
};
@end
