//
//  main.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 18.06.2021.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "LetterChecker.h"

#define calculator [Calculator new]

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // Check string for English letters
    char cstring;
    NSLog(@"\nCheck if letter is in English:");
    scanf("%s", &cstring);
    NSString *enteredString = [NSString stringWithCString: &cstring encoding: 1];
    BOOL result = [LetterChecker checkIfContainsEnglish:enteredString];
    NSLog(@"String '%@' %@",enteredString, result ? (@"contains English letters.") : (@"does not contain any English letters."));

    // Calculator
    NSInteger firstNumber;
    NSInteger secondNumber;
    NSLog(@"\nEnter first number:");
    scanf("%li", &firstNumber);
    NSLog(@"\nEnter second number:");
    scanf("%li", &secondNumber);

    NSInteger summ = [calculator calculatorSumm:firstNumber and:secondNumber];
    NSInteger diff = [calculator calculatorDifference:firstNumber and:secondNumber];
    NSInteger multiply = [calculator calculatorMultiply:firstNumber and:secondNumber];
    NSInteger division = [calculator calculatorDivide:firstNumber and:secondNumber];
    NSInteger remainder = [calculator calculatorRemainder:firstNumber and:secondNumber];
    NSLog(@"\nResult for entered numbers: \n summ: %li, \n difference: %li, \n multiplied: %li, \n division: %li, \n remainder after division: %li",
          summ, diff, multiply, division, remainder);
  }
  return 0;
}
