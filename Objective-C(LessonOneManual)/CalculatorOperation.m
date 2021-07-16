//
//  CalculatorOperation.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 16.07.2021.
//

#import "CalculatorOperation.h"
#import "Calculator.h"

@implementation CalculatorOperation

- (instancetype)initWithNumbers: (NSInteger)firstNumber and: (NSInteger)secondNumber {
  self = [super init];
  if (self) {
    _firstNumber = firstNumber;
    _secondNumber = secondNumber;
  }
  return self;
}

- (void)main {
  Calculator *calculator = [[Calculator alloc] init];

  NSInteger calcMultiplyResult = [calculator calculate:_firstNumber and:_secondNumber method: CalculatorMethodMultiply];
  NSLog(@"Result after using method '*' is %li", calcMultiplyResult);
}

- (void)start {
  NSLog(@"Op started");
  [super start];
}

- (BOOL)isReady {
  BOOL status = [super isReady];
  NSLog(@"Operation status %hhd", status);
  return [super isReady];
}

- (BOOL)isFinished {
  NSLog(@"Op finished");
  return [super isFinished];
}

- (void)dealloc {
  NSLog(@"Operation deallocated");
  [super dealloc];
}

@end
