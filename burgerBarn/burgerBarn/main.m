//
//  main.m
//  burgerBarn
//
//  Created by Leo Boyatzis on 25/03/2016.
//  Copyright © 2016 Leo Boyatzis. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // create an NSDictionary using the literal syntax
        // NSDictionary factory build me an NSDictionary, name it orderDict, set these key-value pairs
        // We can only put objects into our dictionary, therefore we need to convert the values to objects using the @
        NSDictionary *orderDict = @{
                                    @"burgers": @5,
                                    @"shakes": @3,
                                    @"customers": @4,
                                    @"isTakeOut": @NO,
                                    @"subtotal": @0.0,
                                    };
        
        float burgerPrice = 4;
        float shakePrice = 3;
        float subtotal;
        
        // The burgerPrice times the value of the key burgers within our orderDict
        // At the end we need to convert this to an intValue
        // We need to convert to an intValue because when we call valueForKey we are getting a pointer back
        // You can't perform math on a counter
        
        subtotal =
            (burgerPrice * [[orderDict valueForKey: @"burgers"]intValue]) +
            (shakePrice * [[orderDict valueForKey: @"shakes"]intValue]);
        
        // Convert order dict into a mutable dictionary
        NSMutableDictionary *outputDict = [NSMutableDictionary dictionaryWithDictionary: orderDict];
        // Set the value of the subtotal that we calculated above
        [outputDict setValue:@(subtotal) forKey:@"subtotal"];
        
    }
    return 0;
}
