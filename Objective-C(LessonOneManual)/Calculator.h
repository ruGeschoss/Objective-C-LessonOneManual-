//
//  Calculator.h
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 25.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

typedef NS_ENUM(NSUInteger, CalculatorMethod) {
  CalculatorMethodPlus,
  CalculatorMethodMinus,
  CalculatorMethodMultiply,
  CalculatorMethodDivide,
  CalculatorMethodRemainder
};

- (NSInteger)calculate: (NSInteger)firstNumber and: (NSInteger)secondNumber method: (CalculatorMethod)method;

@end

NS_ASSUME_NONNULL_END
