//
//  main.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 18.06.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    int firstNumber;
    int secondNumber;

    printf("Enter numbers to get remainder.\n");
    printf("Number to divide: ");
    scanf("%d", &firstNumber);
    printf("Divider: ");
    scanf("%d", &secondNumber);
    NSLog(@"Remainder after dividing %d by %d is %d",
          firstNumber,
          secondNumber,
          firstNumber % secondNumber);

    int numberOne;
    int numberTwo;
    int numberThree;
    printf("Now enter three numbers to get middle number for them. \n");
    printf("First number: ");
    scanf("%d", &numberOne);
    printf("Second number: ");
    scanf("%d", &numberTwo);
    printf("Third number: ");
    scanf("%d", &numberThree);
    NSLog(@"Middle number for %d, %d and %d is %d",
          numberOne,
          numberTwo,
          numberThree,
          (numberOne + numberTwo + numberThree) / 3);
  }
  return 0;
}
