//
//  ShapeFactory.h
//  Project1
//
//  Created by Annis Dan on 5/30/12.
//  Copyright (c) 2012 Dannis Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShapeClass.h"

@interface ShapeFactory : NSObject

//Only Static function here. 
+(ShapeClass*)CreateShape : (NSInteger)shapeID;
@end
