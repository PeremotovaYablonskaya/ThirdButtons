//
//  PYTree.m
//  FirstApple
//
//  Created by fpmi on 05.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYTree.h"

@implementation PYTree


-(id)initRandom
{
    self=[super init];
    if(self)
    {
        srand(time(NULL));
        _numberOfApples=rand()%30;
        for(int i = 0; i < _numberOfApples; i++)
        {
            /*PYApple *apple = [PYApple alloc];
            PYType type = GUDJI;
            [apple initWithType: &type];
            app[i]=apple;*/
            PYType type = GUDJI;
            app[i]=[[PYApple alloc] initWithType:&type];
        }
    
    }
    return self;
    
}
- (void)growApples
{
    srand(time(NULL));
    int k;
    do
    {
       k = rand()%20;
    }while(k+self.numberOfApples>MAX_NUMBER);
    
    for(int i = 0; i <k; i++)
    {
        /*PYApple *apple = [PYApple alloc];
        PYType type = GUDJI;
        [apple initWithType: &type];
        app[self.numberOfApples+i]=apple;*/
        PYType type = GUDJI;
        app[self.numberOfApples+i]=[[PYApple alloc] initWithType:&type];
       // [self.apples addObject: apple];
    }
    self.numberOfApples+=k;
    
}
- (void)shakeApples
{
    int k;
    do
    {
        k = rand()%20;
    }while(self.numberOfApples-k<0);
    srand(time(NULL));
    for(int i = 0; i < k; i++)
    {
        [app[self.numberOfApples-i-1] release];
       /* [self.apples removeLastObject];*/
    }
    self.numberOfApples-=k;
}
- (void) showNumberOfApples
{
    //NSLog(@"Number of apples %lu", [self.apples count]);
    NSLog(@"Number of apples %d", self.numberOfApples);
}
@end
