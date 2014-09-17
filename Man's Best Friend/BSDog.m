//
//  BSDog.m
//  Man's Best Friend
//
//  Created by Brian Starr on 9/1/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "BSDog.h"

@implementation BSDog

-(void)bark
{
    NSLog(@"Burrrrr!");
}

-(void)barkANumberOfTimes: (int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark ++){
        [self bark];
    }
}

-(void)changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud){
        for (int bark = 1; bark <= numberOfTimes; bark ++){
            NSLog(@"Squelch");
        }
    }
    else {
        for (int bark = 1; bark <= numberOfTimes; bark ++){
            NSLog(@"BURR!");
        }
    }
}

-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}

@end
