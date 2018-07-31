//
//  main.m
//

//
//  Created by Jamie on 2018-07-30.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        char inputChars[255];//declare array
        
        while (true){
            
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);// get user input, limit input to max 255 characters
            
            //performs some string manipulation
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            //logs the output back to the user
            
            
            NSLog(@"%@", inputString);
        }
    }
    return 0;
}
