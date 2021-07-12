//
//  Bird.h
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 12.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property (nonatomic, strong, readonly, nullable) NSString * birdname;

- (instancetype) initWithName: (NSString *) birdname;

@end

NS_ASSUME_NONNULL_END
