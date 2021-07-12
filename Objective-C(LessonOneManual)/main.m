//
//  main.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 18.06.2021.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    // Calculator
    Calculator *calculator = [Calculator new];

    NSInteger firstInt;
    NSInteger secondInt;
    CalculatorMethod chosenMethod;
    char enteredMethod;

    NSLog(@"Enter method to use: \n");
    scanf("%c", &enteredMethod);
    NSLog(@"Enter first number to calculate: \n");
    scanf("%li", &firstInt);
    NSLog(@"Enter second number to calculate: \n");
    scanf("%li", &secondInt);

    switch (enteredMethod) {
      case '+':
        chosenMethod = CalculatorMethodPlus;
        break;
      case '-':
        chosenMethod = CalculatorMethodMinus;
        break;
      case '*':
        chosenMethod = CalculatorMethodMultiply;
        break;
      case '/':
        chosenMethod = CalculatorMethodDivide;
        break;
      case '%':
        chosenMethod = CalculatorMethodRemainder;
        break;

      default:
        NSLog(@"Can not detect method %c.", enteredMethod);
        return 0;
    }

    NSInteger calcResult = [calculator calculate:firstInt and:secondInt method: chosenMethod];
    NSLog(@"Result after using method '%c' is %li", enteredMethod, calcResult);

    [calculator release];
  }
  return 0;
}
