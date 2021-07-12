//
//  LetterChecker.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 25.06.2021.
//

#import "LetterChecker.h"

@implementation LetterChecker

+ (BOOL) checkIfContainsEnglish: (NSString*)stringValue {
  // -> rangeOfString
  NSString *pattern = @"[a-zA-Z]+";
  NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern: pattern options: 0 error: NULL];
  NSUInteger matches = [regex numberOfMatchesInString: stringValue options: 0 range: NSMakeRange(0, [stringValue length])];
  return matches > 0;
}

@end
