//
//  main.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 18.06.2021.
//

#import <Foundation/Foundation.h>

int calculate(NSString *method, int a, int b) {

  if ([method isEqualToString:@"+"]) {
    return a + b;
  }
  else if ([method isEqualToString:@"-"]) {
    return a - b;
  }
  else if ([method isEqualToString:@"*"]) {
    return a * b;
  }
  else if ([method isEqualToString:@"/"]) {
    return a / b;
  }
  else if ([method isEqualToString:@"%"]) {
    return a % b;
  }
  else {
    NSLog(@"Функция не знает переданный метод");
    return 0;
  }

  return a + b;

}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int a = calculate(@"+", 2, 3);
    int b = calculate(@"-", 3, 2);
    int c = calculate(@"*", 4, 5);
    int d = calculate(@"/", 10, 2);
    int e = calculate(@"%", 6, 3);
    NSLog(@"Result: \n a = %i, \n b = %i, \n c = %i, \n d = %i, \n e = %i", a, b, c, d, e);
  }
  return 0;
}
