//
//  ViewControllerB.m
//  TestUI2
//
//  Created by Lioncraft on 5/12/15.
//  Copyright (c) 2015 Lioncraft. All rights reserved.
//

#import "ViewControllerB.h"

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    UIButton * button = [UIButton   buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(130, 50, 60, 20)];
    [button setTitle:@"Back" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backFirstView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)backFirstView {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"back to first");
    }];
}

@end
