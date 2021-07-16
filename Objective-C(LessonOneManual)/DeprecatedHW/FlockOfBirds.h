//
//  FlockOfBirds.h
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 12.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlockOfBirds : NSObject

@property (nonatomic, strong) NSArray * arrayOfBirds;

-(instancetype) initFlockWithBirds: (NSArray *) birds;

@end

NS_ASSUME_NONNULL_END
