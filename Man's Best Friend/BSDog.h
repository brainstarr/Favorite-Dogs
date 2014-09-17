//
//  BSDog.h
//  Man's Best Friend
//
//  Created by Brian Starr on 9/1/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes: (int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)printHelloWorld;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;

@end
