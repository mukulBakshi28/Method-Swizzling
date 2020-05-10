//
//  FeatureButton.m
//  MethodSwizzlingT
//
//  Created by Mukul Bakshi on 10/05/20.
//  Copyright © 2020 Mukul Bakshi. All rights reserved.
//

#import "FeatureButton.h"

@implementation FeatureButton

-(void)changeBackground {
    [self setBackgroundColor:[UIColor redColor]];
     NSLog(@"Background Changes");
}

 

@end
