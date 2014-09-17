//
//  BSPuppy.m
//  Man's Best Friend
//
//  Created by Brian Starr on 9/3/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "BSPuppy.h"

@implementation BSPuppy

-(void)givePuppyEyes{
    NSLog(@":(");
}

-(void)bark{
    NSLog(@"yip");
    [self givePuppyEyes];
}

@end
