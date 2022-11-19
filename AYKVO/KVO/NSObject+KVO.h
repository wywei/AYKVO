//
//  NSObject+KVO.h
//  AYKVO
//
//  Created by 王亚威 on 2022/10/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (KVO)
- (void)ay_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;
@end

NS_ASSUME_NONNULL_END
