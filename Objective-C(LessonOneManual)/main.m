//
//  main.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 18.06.2021.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Student.h"

#define calculator [Calculator new]

typedef NS_ENUM(NSUInteger, Gender) {
  GenderMale,
  GenderFemale
};

struct Human {
  NSString * name;
  NSInteger age;
  Gender gender;
};

typedef struct Human Human;

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    Student * studentOne = [[Student alloc] initStudent: @"Luke"
                                                surname: @"Skywalker"
                                                    age: 26];
    Student * studentTwo = [[Student alloc] initStudent: @"Gordon"
                                                 surname: @"Ramsey"
                                                     age: 31];
    Student * studentThree = [[Student alloc] initStudent: @"Todd"
                                                 surname: @"Howard"
                                                     age: 17];
    NSArray * allStudents = @[studentOne, studentTwo, studentThree];

    for (Student *student in allStudents) {
      NSLog(@"%@", [student description]);
      [student increaseAge];
    }

    // For-while loops
    NSMutableArray * arrayOfEnteredNumbers = [NSMutableArray new];

    NSInteger numbersCount;
    NSLog(@"Enter numbers count:\n");
    scanf("%li", &numbersCount);
    NSLog(@"Enter those %li numbers:\n", numbersCount);

    while ([arrayOfEnteredNumbers count] < numbersCount) {
      NSInteger enteredNumber;
      scanf("%li", &enteredNumber);
      [arrayOfEnteredNumbers addObject: @(enteredNumber)];
    }

    for (NSNumber * number in arrayOfEnteredNumbers) {
      NSLog(@"Previously stored number: %@", number);
    }


    // Structs
    Human ann;
    ann.name = @"Ann";
    ann.age = 22;
    ann.gender = GenderFemale;

    Human alex = { @"Alex", 25, GenderMale };

    NSLog(@"This is %@, gender: %@, age: %li",
          ann.name,
          ann.gender == 0 ? @"Male" : @"Female",
          (long)ann.age);
    NSLog(@"This is %@, gender: %@, age: %li",
          alex.name,
          alex.gender == 0 ? @"Male" : @"Female",
          (long)alex.age);

    // Calculator
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

  }
  return 0;
}
