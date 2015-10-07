//
//  ViewController.m
//  ThirdButtons
//
//  Created by fpmi on 26.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "PYtree.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *minNumberOfApples;
@property (strong, nonatomic) IBOutlet UILabel *maxNumberOfApples;
@property (strong, nonatomic) IBOutlet UILabel *currentNumberOfApples;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PYTree *tree = ((AppDelegate*)[UIApplication sharedApplication].delegate).tree;
    NSString* str = [[NSString alloc] initWithFormat: @"%d", [tree numberOfApples]];
    [self.currentNumberOfApples setText: str];
    [self.minNumberOfApples setText: str];
    [self.maxNumberOfApples setText: str];
    self.minNum = [tree numberOfApples];
    self.maxNum = [tree numberOfApples];
    [str release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onGrowButtonClick:(id)sender {
    PYTree *tree = ((AppDelegate*)[UIApplication sharedApplication].delegate).tree;
    [tree growApples];
    NSString* str;
    if(self.maxNum < [tree numberOfApples])
    {
        self.maxNum = [tree numberOfApples];
        str =[[NSString alloc] initWithFormat: @"%d", self.maxNum];
        [self.maxNumberOfApples setText: str];
        [str release];
    }
    str = [[NSString alloc] initWithFormat: @"%d", [tree numberOfApples]];
    [self.currentNumberOfApples setText: str];
    [str release];
    
}

- (IBAction)onShakeButtonClick:(id)sender {
    PYTree *tree = ((AppDelegate*)[UIApplication sharedApplication].delegate).tree;
    [tree shakeApples];
    NSString* str;
    if(self.minNum > [tree numberOfApples])
    {
        self.minNum = [tree numberOfApples];
        str = [[NSString alloc] initWithFormat: @"%d", self.minNum];
        [self.minNumberOfApples setText: str];
        [str release];
    }
    str = [[NSString alloc] initWithFormat: @"%d", tree.numberOfApples];
    [self.currentNumberOfApples setText: str];
    [str release];
}
@end
