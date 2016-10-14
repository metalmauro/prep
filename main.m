//
//  main.m
//  largestNum
//
//  Created by Matthew Mauro on 2016-10-13.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import <Foundation/Foundation.h>
#include <stdlib.h>


NSNumber * findLargest(NSMutableArray *nums){
    NSNumber *large = 0;
    int arrayle = sizeof(nums);
    
    for (int i = 0; i  < arrayle; i++){
        NSInteger find = ((NSInteger)i);
        
        
        
        NSNumber *toCheck = [nums objectAtIndex:find];
        
        
        
        if (large < toCheck){
            large = toCheck;
        }
    }
    
    return large;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Death, is whimsical today"); //zenyatta quote
        NSMutableArray* toFind = [[NSMutableArray alloc] initWithCapacity:15];
        int arrayle = sizeof(toFind);
        
        for (int i = 0; i  < arrayle; i++){
            
            int x = arc4random_uniform(74);
            
            NSNumber* xWrapped = [NSNumber numberWithInt:x];
            [toFind addObject:xWrapped];
            
        }
        NSNumber *largest = findLargest(toFind);
        
        NSString *print = [largest stringValue];
        NSLog(@"Found: %@", print);
        
    }
    return 0;
}
