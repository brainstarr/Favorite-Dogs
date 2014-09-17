//
//  BSViewController.m
//  Man's Best Friend
//
//  Created by Brian Starr on 9/1/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "BSViewController.h"
#import "BSDog.h"
#import "BSPuppy.h"

@interface BSViewController ()

@end

@implementation BSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    BSDog *myDog = [[BSDog alloc] init];
    myDog.name = @"Penni";
    myDog.breed = @"Beagle";
    myDog.age = 5;
    myDog.image = [UIImage imageNamed:@"penn_and_gigi.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    BSDog *secondDog = [[BSDog alloc]init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russel Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    BSDog *thirdDog = [[BSDog alloc] init];
    thirdDog.name = @"Beethoven";
    thirdDog.breed = @"St. Bernard";
    thirdDog.image = [UIImage imageNamed:@"St.Bernard.jpg"];
    
    BSDog *fourthDog = [[BSDog alloc]init];
    fourthDog.name = @"Bo";
    fourthDog.breed = @"Portuguese Water Dog";
    fourthDog.image = [UIImage imageNamed:@"Bo.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    self.currentIndex = 0;
    
    BSPuppy *penniPuppy = [[BSPuppy alloc]init];
    [penniPuppy bark];
    penniPuppy.breed = @"Beagle";
    penniPuppy.name = @"Penni";
    penniPuppy.image = [UIImage imageNamed:@"penni_puppy.jpg"];
    
    [self.myDogs addObject:penniPuppy];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWorld
{
    NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonItemPress:(id)sender {
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (randomIndex == self.currentIndex && randomIndex == 0) {
        randomIndex ++;
    }
    else if (randomIndex == self.currentIndex){
        randomIndex --;
    }
    
    self.currentIndex = randomIndex;
    
    BSDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    self.myImageView.image = randomDog.image;
    self.nameLabel.text = randomDog.name;
    self.breedLabel.text = randomDog.breed;
}
@end
