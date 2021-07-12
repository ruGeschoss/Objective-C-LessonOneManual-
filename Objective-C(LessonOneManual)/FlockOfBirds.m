//
//  FlockOfBirds.m
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 12.07.2021.
//

#import "FlockOfBirds.h"
#import "Bird.h"

@implementation FlockOfBirds

-(instancetype) initFlockWithBirds: (NSArray *) birds {
  self = [super init];
  if (self) {
    [birds retain];
    [birds release];

    _arrayOfBirds = birds;

    for (Bird *bird in _arrayOfBirds) {
      NSLog(@"%@ joined the Flock", bird.birdname);
    }
  }
  return self;
}

- (void) disperseFlock {
  for (Bird *bird in _arrayOfBirds) {
    NSLog(@"Bird %@ is about to leave the Flock", bird.birdname);
    [bird release];
  }
  [_arrayOfBirds release];
}

- (void) dealloc {
  [self disperseFlock];
  NSLog(@"Flock dealloc");
  [super dealloc];
}

@end
