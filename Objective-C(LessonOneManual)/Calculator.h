//
//  Calculator.h
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 25.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

- (NSInteger)calculatorSumm:(NSInteger)firstNumber and: (NSInteger)secondNumber;

- (NSInteger)calculatorDifference:(NSInteger)firstNumber and: (NSInteger)secondNumber;

- (NSInteger)calculatorMultiply:(NSInteger)firstNumber and: (NSInteger)secondNumber;

- (NSInteger)calculatorDivide:(NSInteger)firstNumber and: (NSInteger)secondNumber;

- (NSInteger)calculatorRemainder:(NSInteger)firstNumber and: (NSInteger)secondNumber;

@end

NS_ASSUME_NONNULL_END
