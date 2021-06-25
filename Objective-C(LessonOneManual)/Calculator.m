//
//  Calculator.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 25.06.2021.
//

#import "Calculator.h"

@implementation Calculator

- (NSInteger)calculatorSumm:(NSInteger)firstNumber and: (NSInteger)secondNumber {
  return firstNumber + secondNumber;
}

- (NSInteger)calculatorDifference:(NSInteger)firstNumber and: (NSInteger)secondNumber {
  return firstNumber - secondNumber;
}

- (NSInteger)calculatorMultiply:(NSInteger)firstNumber and: (NSInteger)secondNumber {
  return firstNumber * secondNumber;
}

- (NSInteger)calculatorDivide:(NSInteger)firstNumber and: (NSInteger)secondNumber {
  return firstNumber / secondNumber;
}

- (NSInteger)calculatorRemainder:(NSInteger)firstNumber and: (NSInteger)secondNumber {
  return firstNumber % secondNumber;
}

@end
