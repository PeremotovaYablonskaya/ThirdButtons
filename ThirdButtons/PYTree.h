//
//  PYTree.h
//  FirstApple
//
//  Created by fpmi on 05.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYApple.h"
static const int MAX_NUMBER=100;
@interface PYTree : NSObject
{
    
    PYApple* app[MAX_NUMBER];
}

@property int numberOfApples;
- (id)initRandom;
- (void)growApples;
- (void)shakeApples;
- (void)showNumberOfApples;
-(int) numberOfApples;
@end
