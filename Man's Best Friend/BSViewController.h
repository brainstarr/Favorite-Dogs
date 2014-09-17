//
//  BSViewController.h
//  Man's Best Friend
//
//  Created by Brian Starr on 9/1/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSViewController : UIViewController

- (IBAction)newDogBarButtonItemPress:(UIBarButtonItem *)sender;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;


@end
