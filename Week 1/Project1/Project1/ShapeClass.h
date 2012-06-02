//
//  ShapeClass.h
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    SHAPETYPE_RECTANGLE=0,
    SHAPETYPE_SQUARE,
    SHAPETYPE_TRIANGLE,
    SHAPETYPE_BLANK
}EShapeType;

@interface ShapeClass : NSObject
{
    EShapeType type;
    int numSides;
    NSString *name;
}

- (int)GetNumSides;
- (NSString *)GetName;
- (int)GetArea; 

// Setting those because they were given :)

@end
