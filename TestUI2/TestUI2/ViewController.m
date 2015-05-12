//
//  ViewController.m
//  TestUI2
//
//  Created by Lioncraft on 5/12/15.
//  Copyright (c) 2015 Lioncraft. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];//
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(120, 220, 80, 40)];
    [button setTitle:@"buttontest" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(goNextView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
     
- (void)goNextView {
    ViewControllerB* view2 = [[ViewControllerB alloc]init];
    
    view2.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:view2 animated:YES completion:nil];
    
}

@end
