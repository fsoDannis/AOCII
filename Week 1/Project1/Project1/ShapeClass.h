//
//  ShapeClass.h
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//
// 

#import <Foundation/Foundation.h>


// Each shape will have a name, number of sides, height, and base
// Following Inheritance Video 
typedef enum
{
    SHAPETYPE_RECTANGLE=0,
    SHAPETYPE_SQUARE,
    SHAPETYPE_TRIANGLE,
    SHAPETYPE_BLANK
}EShapeType;

@interface ShapeClass : NSObject
{
    EShapeType shapetype;
    NSString *shapename;
    
    int base;
    int height;
    int numSides;
    int area;
}

-(int)GetNumSides;
-(NSString *)GetName;
-(int)GetArea; 
-(void)setBase :(int) newBase;
-(void)setHeight :(int) newHeight;

// Setting those because they were given :)

@end
