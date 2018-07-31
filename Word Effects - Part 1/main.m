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
        
        char inputChars[255];//declare array
        
        while (true){
        
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);// get user input, limit input to max 255 characters
        
        //performs some string manipulation
       
            NSString *inputwithEnter = [NSString stringWithUTF8String:inputChars];
            NSString *inputString = [inputwithEnter stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            //Uppercase
            
            NSString *capitalString = inputString.uppercaseString;
            
            //Lowercase
            
            NSString *lowerString = inputString.lowercaseString;
            
            //Numberize
            
            NSInteger number = inputString.integerValue;
            number = number +1;
            
            //Canadianize
            
            NSString *canadianizedString = [inputString stringByAppendingString:@", eh?"];
            
            //Respond
            if ([inputString hasSuffix:@"!"])
            {
                NSLog(@"Whoah, calm down Tiger");
            }
            if ([inputString hasSuffix:@"?"])
            {
                NSLog(@"I don't know");
            }
            
            //De-Space-It
            
            NSString *despaced = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSLog(@"%@", despaced);
            

        
        //logs the output back to the user
        
        
            NSLog(@"\n Manipulated:%@ Uppercase:%@ Lowercase:%@ Tested:%ld\n Canadianized:%@", inputString, capitalString, lowerString, (long)number, canadianizedString);
        }
    }
    return 0;
}
