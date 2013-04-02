//
//  Attempt2ViewController.m
//  Attempt2
//
//  Created by Kevin Schlei on 2/27/13.
//  Copyright (c) 2013 PSOA. All rights reserved.
//

#import "Attempt2ViewController.h"

@interface Attempt2ViewController ()

@property (nonatomic,strong) UIImageView *Attempt2ImageView;

@end

@implementation Attempt2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    [self.Attempt2ImageView setCenter:self.view.center];
    [self.view addSubview:self.Attempt2ImageView];
    
    [self.Attempt2ImageView setAnimationDuration:0.75];
    [self.Attempt2ImageView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImageView *)Attempt2ImageView {
    if (_Attempt2ImageView == nil) {
        _Attempt2ImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 256, 256)];
        
        NSMutableArray *animationImages = [NSMutableArray array];
        for (int i=0; i<4; i++) {
            [animationImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"Attempt2-%i.png",i]]];
        }
        [_Attempt2ImageView setAnimationImages:animationImages];
        
        //set the static image:
        [_Attempt2ImageView setImage:[UIImage imageNamed:@"Attempt2-0.png"]];
    }
    return _Attempt2ImageView;
}
















@end
