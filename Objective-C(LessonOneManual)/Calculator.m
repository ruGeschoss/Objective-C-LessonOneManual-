//
//  Calculator.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 25.06.2021.
//

#import "Calculator.h"

@implementation Calculator

CalculatorBlock calculatorSumm = ^(NSInteger firstNumber, NSInteger secondNumber) {
  return firstNumber + secondNumber;
};

CalculatorBlock calculatorDifference = ^(NSInteger firstNumber, NSInteger secondNumber) {
  return firstNumber - secondNumber;
};

CalculatorBlock calculatorMultiply = ^(NSInteger firstNumber, NSInteger secondNumber) {
  return firstNumber * secondNumber;
};

CalculatorBlock calculatorDivide = ^(NSInteger firstNumber, NSInteger secondNumber) {
  return firstNumber / secondNumber;
};

CalculatorBlock calculatorRemainder = ^(NSInteger firstNumber, NSInteger secondNumber) {
  return firstNumber % secondNumber;
};

- (NSInteger)calculate: (NSInteger)firstNumber and: (NSInteger)secondNumber method: (CalculatorMethod)method {
  switch (method) {
    case CalculatorMethodPlus:
      return calculatorSumm(firstNumber, secondNumber);
      break;
    case CalculatorMethodMinus:
      return calculatorDifference(firstNumber, secondNumber);
      break;
    case CalculatorMethodMultiply:
      return calculatorMultiply(firstNumber, secondNumber);
      break;
    case CalculatorMethodDivide:
      return calculatorDivide(firstNumber, secondNumber);
      break;
    case CalculatorMethodRemainder:
      return calculatorRemainder(firstNumber, secondNumber);
      break;
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
