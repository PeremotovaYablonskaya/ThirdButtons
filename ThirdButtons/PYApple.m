//
//  PYApple.m
//  FirstApple
//
//  Created by fpmi on 05.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYApple.h"
#include <stdlib.h>

@implementation PYApple
-(void) taste
{
    NSLog(@"Yummmi!!!");
}
-(id)initWithType: (PYType *) type;
{
    self=[super init];
    if(self)
    {
        _type=type;
        srand(time(NULL));
        _seedCount=rand()%15;
    }
    return self;

}
@end
