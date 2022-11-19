//
//  KVONotifiing_Person.m
//  AYKVO
//
//  Created by 王亚威 on 2022/10/17.
//

#import "KVONotifiing_Person.h"
#import "Person.h"
#import <objc/message.h>

@implementation KVONotifiing_Person

- (void)setAge:(NSInteger)age {
    [super setAge:age];
        
    id observer = objc_getAssociatedObject(self, "observer");
    
    [observer observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
}
@end
