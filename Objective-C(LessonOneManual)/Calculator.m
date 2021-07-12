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

- (NSInteger)calculate: (NSInteger)firstNumber and: (NSInteger)secondNumber method: (CalculatorMethod)method {
  switch (method) {
    case CalculatorMethodPlus:
      return [[Calculator new] calculatorSumm:firstNumber and:secondNumber];
    case CalculatorMethodMinus:
      return [[Calculator new] calculatorDifference:firstNumber and:secondNumber];
    case CalculatorMethodMultiply:
      return [[Calculator new] calculatorMultiply:firstNumber and:secondNumber];
    case CalculatorMethodDivide:
      return [[Calculator new] calculatorDivide:firstNumber and:secondNumber];
    case CalculatorMethodRemainder:
      return [[Calculator new] calculatorRemainder:firstNumber and:secondNumber];
    default:
      return 0;
  }
}

// MARK: - Methods to track calculator

- (instancetype) init {
  self = [super init];
  if (self) {
    NSLog(@"Calculator created");
  }
  return self;
}

- (void) dealloc {
  NSLog(@"Calculator deallocated");
  [super dealloc];
}

@end
