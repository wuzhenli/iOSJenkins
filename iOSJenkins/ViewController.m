//
//  ViewController.m
//  iOSJenkins
//
//  Created by li’Pro on 2019/1/15.
//  Copyright © 2019 wzl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"----");
    NSLog(@"111");
    
//    NSOrderedSetcd
    NSLog(@"success");
    NSLog(@"+++");
    self.label.text = @"3月18日第一次提交，第二次提交，第三次提交";
}


@end
