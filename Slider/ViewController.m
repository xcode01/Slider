//
//  ViewController.m
//  Slider
//
//  Created by hiepnq on 9/4/15.
//  Copyright (c) 2015 hiepnq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer* _timer;
    __weak IBOutlet UISlider *Slider;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.2
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    Slider.transform = CGAffineTransformMakeRotation(M_PI_2);
    Slider.tintColor = [UIColor redColor];
    Slider.thumbTintColor = [UIColor blueColor];
    }
-(void) onTimer {
    Slider.value += 0.07;
    if (Slider.value >= 1.0){
        Slider.value = 1.0;
        [_timer invalidate];
        
    }
    
}


@end
