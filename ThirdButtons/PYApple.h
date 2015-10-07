//
//  PYApple.h
//  FirstApple
//
//  Created by fpmi on 05.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    ANTONOBKA,
    GOLDEN,
    GALA,
    GUDJI,
    RENET,
    GRENNY_SMITH
}PYType;

@interface PYApple : NSObject
@property int seedCount;
@property PYType *type;
- (id)initWithType: (PYType *) type;
-(void) taste;
@end
