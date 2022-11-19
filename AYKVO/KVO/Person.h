//
//  Person.h
//  AYKVO
//
//  Created by 王亚威 on 2022/10/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
//{
//    @public
//    NSInteger _age;
//}
@property(nonatomic, copy)NSString *name;
@property(nonatomic, assign)NSInteger age;

@end

NS_ASSUME_NONNULL_END
