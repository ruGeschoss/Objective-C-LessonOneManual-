//
//  Bird.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 12.07.2021.
//

#import "Bird.h"

@implementation Bird

- (instancetype) initWithName: (NSString *) birdname {
  self = [super init];
  if (self) {
    [birdname retain];
    [birdname release];
    
    _birdname = birdname;
    NSLog(@"New bird %@", _birdname);
  }
  return self;
}

- (void) dealloc {
  NSLog(@"Bird %@ flew away", _birdname);
  [_birdname release];
  [super dealloc];
}

@end
