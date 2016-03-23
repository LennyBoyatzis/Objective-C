//
//  main.m
//  testStrings
//
//  Created by Leo Boyatzis on 22/03/2016.
//  Copyright © 2016 Leo Boyatzis. All rights reserved.
//

enum popcornSizes{
    kidsPopcorn = 1,
    smallPopcorn = 2,
    mediumPopcorn = 3,
    largePopcorn = 4,
    tubPopcorn = 5
};

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    /*
    NSString *firstName;
    firstName = @"Jaime";
    
    int currentAge = 36;
    
    float currentWeight = 200.495;
    
    NSLog(@"%@ is %d and weighs %f", firstName, currentAge, currentWeight);
    
    int x = 0;
    
    NSString *posOrNeg = x > 0 ? @"positive" : @"negative";
    
    NSLog(@"posOrNeg---->%@", posOrNeg);
    
    int apples = 3 + 5 + 5 + 4 + 2;
    */
    
    /*
    bool isMatinee = true;

    float regPrice = 10;
    float seniorPrice = 5;
    float matPrice = 4;
    
    int minAge = 60;
    int custAge;
    
    float custPrice;
    
    if (isMatinee) {
        custPrice = matPrice;
    } else if (custAge >= minAge) {
        custPrice = seniorPrice;
    } else {
        custPrice = regPrice;
    }
    
    NSLog(@"custPrice %f", custPrice);
    */
    
    float popcornPrice;
    int popcornSize = kidsPopcorn;
    
    switch (popcornSize) {
        case kidsPopcorn:
            popcornPrice = 1.5;
            break;
        
        case smallPopcorn:
            popcornPrice = 3;
            break;
        
        case mediumPopcorn:
            popcornPrice = 4.25;
            break;
        
        case largePopcorn:
            popcornPrice = 5.25;
            break;
    
        case tubPopcorn:
            popcornPrice = 6;
            break;
        
        default:
            NSLog(@"No valid size entered");
            break;
    }
    
    return 0;
}
