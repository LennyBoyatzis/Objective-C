//
//  main.m
//  testStrings
//
//  Created by Leo Boyatzis on 22/03/2016.
//  Copyright © 2016 Leo Boyatzis. All rights reserved.
//

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
    
    
    return 0;
}
