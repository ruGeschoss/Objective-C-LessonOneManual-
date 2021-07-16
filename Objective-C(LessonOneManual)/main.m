//
//  main.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 18.06.2021.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "CalculatorOperation.h"

int main(int argc, const char * argv[]) {

  NSAutoreleasePool * pool = [NSAutoreleasePool new];
  // MARK: - Calculator
  Calculator *calculator = [Calculator new];
  [calculator autorelease];
  
  NSInteger firstInt;
  NSInteger secondInt;

  NSLog(@"Enter first number to calculate: \n");
  scanf("%li", &firstInt);
  NSLog(@"Enter second number to calculate: \n");
  scanf("%li", &secondInt);

  // MARK: - GCD Global Queue + Barrier
  dispatch_queue_t myGlobalQueue = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
  [myGlobalQueue autorelease];

  dispatch_async(myGlobalQueue, ^{
    NSInteger calcPlusResult = [calculator calculate:firstInt and:secondInt method: CalculatorMethodPlus];
    NSLog(@"Result after using method '+' is %li", calcPlusResult);
  });

  dispatch_barrier_async(myGlobalQueue, ^{
    NSInteger calcRemainderResult = [calculator calculate:firstInt and:secondInt method: CalculatorMethodRemainder];
    NSLog(@"Result after using method '%%' is %li", calcRemainderResult);
  });

  dispatch_async(myGlobalQueue, ^{
    NSInteger calcMinusResult = [calculator calculate:firstInt and:secondInt method: CalculatorMethodMinus];
    NSLog(@"Result after using method '-' is %li", calcMinusResult);

    dispatch_async(dispatch_get_main_queue(), ^{
      NSLog(@"Способ с урока не работает?");
    });
  });

  // MARK: - CGD Group
  __block NSInteger calcDivideResult;
  __block NSInteger calcMultiplyResult;

  dispatch_group_t myGroup = dispatch_group_create();

  dispatch_group_async(myGroup, myGlobalQueue, ^{
    calcMultiplyResult = [calculator calculate:firstInt and:secondInt method: CalculatorMethodMultiply];
  });
  dispatch_group_async(myGroup, myGlobalQueue, ^{
    calcDivideResult = [calculator calculate:firstInt and:secondInt method: CalculatorMethodDivide];
  });

  dispatch_group_notify(myGroup, myGlobalQueue, ^{
    NSLog(@"Results after: Multiply - %li, Divide - %li", calcMultiplyResult, calcDivideResult);
  });

// MARK: - Operation
  NSOperationQueue *myOwnOpQueue = [[NSOperationQueue alloc] init];
  CalculatorOperation *myCalcOper = [[CalculatorOperation alloc] initWithNumbers:firstInt and:secondInt];

  [myOwnOpQueue addOperation:myCalcOper];
  [myOwnOpQueue addOperationWithBlock:^{
    NSLog(@"Custom operations work fine too.");
  }];

  [myCalcOper autorelease];
  [myOwnOpQueue autorelease];

  sleep(2);
  [pool release];
  return 0;
}
