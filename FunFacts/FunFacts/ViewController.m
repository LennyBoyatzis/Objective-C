//
//  ViewController.m
//  FunFacts
//
//  Created by Leo Boyatzis on 29/03/2016.
//  Copyright © 2016 Leo Boyatzis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// IBAction lets Interface builder know that this method is linked up to an object in interface build by an action
- (IBAction)showFunFact {
    
    NSArray *facts = [[NSArray alloc] initWithObjects:@"Ants stretch when they wake up", @"Ostriches run faster than horses", nil];
    
    self.funFactLabel.text = [facts objectAtIndex:1];
    
}

@end
