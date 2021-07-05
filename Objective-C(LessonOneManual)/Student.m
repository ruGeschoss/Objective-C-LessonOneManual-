//
//  Student.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 02.07.2021.
//

#import "Student.h"

@implementation Student

- (NSString *) fullname {
  return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

- (instancetype) initStudent: (NSString *) name
                     surname: (NSString *) surname
                         age: (NSInteger) age {
  self = [super init];
  if (self) {
    self.name = name;
    self.surname = surname;
    _age = age;
  }
  return self;
}

- (void)dealloc
{
  NSLog(@"Student %@ has gone...", self.fullname);
}

- (NSString *) description
{
  return [NSString stringWithFormat:@"Hi! My name is %@, i'm %li years old",
          self.fullname,
          (long)_age];
}

- (void) increaseAge {
  _age ++;
  NSLog(@"Student %@ is now %ld years old.",
        self.fullname,
        (long)_age);
}

@end
