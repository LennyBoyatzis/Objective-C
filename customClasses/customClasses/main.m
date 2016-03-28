//
//  main.m
//  customClasses
//
//  Created by Leo Boyatzis on 28/03/2016.
//  Copyright © 2016 Leo Boyatzis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"

int main(int argc, const char * argv[]) {
    
    // create an instance of the class TableCheck
    // Objective-c gives you your standard getters and setters for properties for free
    
    TableCheck *table1 = [[TableCheck alloc] init];
    table1.subtotal = 15.00;
    table1.tip = 5.00;
    table1.isTakeOut = YES;
    float savedTip = table1.tip;
    
    
    return 0;
}
