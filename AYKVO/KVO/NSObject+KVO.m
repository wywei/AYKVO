//
//  NSObject+KVO.m
//  AYKVO
//
//  Created by 王亚威 on 2022/10/17.
//

#import "NSObject+KVO.h"
#import <objc/message.h>
@implementation NSObject (KVO)

- (void)ay_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context {
    object_setClass(self, NSClassFromString(@"KVONotifiing_Person"));

    objc_setAssociatedObject(self, "observer", observer, OBJC_ASSOCIATION_RETAIN);
}

@end
