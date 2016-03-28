//
//  TableCheck.h
//  customClasses
//
//  Created by Leo Boyatzis on 28/03/2016.
//  Copyright © 2016 Leo Boyatzis. All rights reserved.
//

#import <Foundation/Foundation.h>

// The class TableCheck is a subclass of NSObject
@interface TableCheck : NSObject

@property (nonatomic) int serverNumber;
@property (nonatomic) float subtotal;
@property (nonatomic) float tip;
@property (nonatomic) float total;
@property (nonatomic) bool isTakeOut;
@property (nonatomic, strong) NSMutableArray *itemsOrdered;
@property (nonatomic, readonly) NSString *checkID;

// can set values like this [table1 setSubtotal: 12.75]
// table1.subTotal = 12.75
// float someValue = table1.subtotal

// What does nonatomic mean?

// @property (nonatomix, strong) NSMutableArray *itemsOrdered;
// nonatomic specifies how different processes in a multithreaded app can interact with a property
// to make sure a property is thread safe you use atomic instead on non-atomic

// Strong is a memory directive which determines when we increase an objects reference count and when memory can be released
// what is a reference count
// ARC = Automatic Reference Counting - much of the dirty work is handled by the compiler
// Reference count is the number of references pointing to that chunk of memory
// When we create an NSArray and alloc a spot in memory - it will have a reference count of 1
// if we create another variable an point it at the array we created, there reference count goes to 2

// What is the point of keeping these references????
// Once there are no more references, then it is no longer relevant to the program so we can deallocate the chunk of memory (garbage collection)
// Memory directives:
    // - Strong - reference count will be increased and the reference to it will be maintained throughout the life of the object
    // - Weak - Pointing to an object, but not increasing its reference count (often used when creating a parent child relationship. The parent has a Strong reference to the child, but the child only has a weak to the parent
    // - Read only - can set the property initially but thats it
    // - Copy - makes a copy of the object to be referenced. Points to the copy instead and sets its reference to 1

@end
