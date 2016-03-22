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
    
    NSString *firstName;
    firstName = @"Jaime";
    
    int currentAge = 36;
    
    float currentWeight = 200.495;
    
    NSLog(@"%@ is %d and weighs %f", firstName, currentAge, currentWeight);
    
    int x = 0;
    
    NSString *posOrNeg = x > 0 ? @"positive" : @"negative";
    
    NSLog(@"posOrNeg---->%@", posOrNeg);
    
    int apples = 3 + 5 + 5 + 4 + 2;
    
    
    return 0;
}
