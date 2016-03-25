//
//  main.m
//  boxOfficePlus
//
//  Created by Gabriel Nadel on 8/4/15.
//  Copyright (c) 2015 Gabriel Nadel. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *employeeMessage;

void printTicket(){
    //Print this to paper ticket
    NSLog(@"%@", employeeMessage);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    }
    
    //AND operator is: &&
    //OR operator is: ||
    //NOT operator is: !
    
    
    //Full price tickets = $10
    //For a non-employee with an age discount AND attending a matinee = $6.50
    //For a non-employee with an age discount OR attending a matinee = $8
    //For an employee attending a non-matinee = $4.50
    //For an employee attending a matinee = $0.0 (FREE)
    
    
    BOOL ageDiscount;
    BOOL isMatinee = YES;
    BOOL isEmployee = NO;
    
    int customerAge;
    float customerPrice;
    
    int youthAge = 13;
    int seniorAge = 65;
    
    float regularPrice = 10.0;
    float ageOrMatineePrice = 8.50;
    float ageAndMatineePrice = 6.50;
    float employeeRegularPrice = 4.0;
    float employeeMatineePrice = 0;
    
    float subtotal = 0;
    float taxRate = 0.05;
    float grandTotal = 0;
    
    NSArray *agesArray = @[@5, @5, @14, @42, @77];

    for (NSNumber *age in agesArray) {
        
        customerAge = [age intValue];
        
        //Assess Age Discount
        if ((customerAge < youthAge) || (customerAge >= seniorAge)){
            ageDiscount = YES;
        }
        
        else {
            ageDiscount = NO;
        }
        
        
        //Determine Price
        if (ageDiscount && isMatinee && !isEmployee) {
            customerPrice = ageAndMatineePrice;
        }
        
        else if ((ageDiscount || isMatinee) && !isEmployee){
            customerPrice = ageOrMatineePrice;
        }
        
        else if (isEmployee && !isMatinee){
            customerPrice = employeeRegularPrice;
            NSString *employeeMessage = @"Thanks for being part of the team, enjoy your movie!";
            NSLog(@"%@", employeeMessage);
        }
        
        else if (isEmployee && isMatinee){
            customerPrice = employeeMatineePrice;
            employeeMessage = @"Thanks for being part of the team, enjoy your FREE movie!";
            NSLog(@"%@", employeeMessage);
        }
        
        else{
            customerPrice = regularPrice;
        }
        
        subtotal = subtotal + customerPrice;
        NSLog(@"age: %i customer price: %f current subtotal: %f \n", customerAge, customerPrice, subtotal);
    
    }
    
    grandTotal = subtotal + (subtotal * taxRate);
    
    printTicket();
    return 0;
}