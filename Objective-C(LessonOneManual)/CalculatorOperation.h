//
//  CalculatorOperation.h
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 16.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalculatorOperation : NSOperation

@property (nonatomic) NSInteger firstNumber;
@property (nonatomic) NSInteger secondNumber;

- (instancetype)initWithNumbers: (NSInteger)firstNumber and: (NSInteger)secondNumber;

@end

NS_ASSUME_NONNULL_END
