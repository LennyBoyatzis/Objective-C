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

@end
