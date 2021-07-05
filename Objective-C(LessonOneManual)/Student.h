//
//  Student.h
//  Objective-C(LessonOneManual)
//
//  Created by Alexander Andrianov on 02.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * surname;
@property (nonatomic, readonly, strong) NSString * fullname;
@property (nonatomic, readonly) NSInteger age;

- (instancetype) initStudent: (NSString *) name
                     surname: (NSString *) surname
                         age: (NSInteger) age;

- (void) increaseAge;

@end

NS_ASSUME_NONNULL_END
