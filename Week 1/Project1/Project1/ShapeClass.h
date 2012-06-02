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

//Creating the ENUM helps identify and pull the shapes out without a lot of code in other places!
typedef enum
{
    SHAPETYPE_RECTANGLE=0,
    SHAPETYPE_SQUARE,
    SHAPETYPE_TRIANGLE,
    SHAPETYPE_BLANK
}EShapeType;

//Defining the commonalities between the shapes. They will all have these particular things. 
@interface ShapeClass : NSObject
{
    EShapeType shapetype;
    NSString *shapename;
    
    int base;
    int height;
    int numSides;
    int area;
}

// These are the Method calls to get the information. The actual coding is inside the m file. 
-(int)GetNumSides;
-(NSString *)GetName;
-(int)GetArea; 
-(void)setBase :(int) newBase;
-(void)setHeight :(int) newHeight;

// Setting those because they were given :)

@end
