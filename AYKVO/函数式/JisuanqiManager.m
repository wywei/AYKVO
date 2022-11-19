//
//  JisuanqiManager.m
//  AYKVO
//
//  Created by 王亚威 on 2022/10/18.
//

#import "JisuanqiManager.h"

@implementation JisuanqiManager

-(JisuanqiManager *)jisuan:(NSInteger (^)(NSInteger))block {
    _result = block(_result);
    return self;
}

-(JisuanqiManager *)log {
    NSLog(@"wyw---%ld", _result);
    return self;
}

-(BOOL)equal:(NSInteger)value{
    NSLog(@"wyw----是否相等:%ld",_result == value);
    return _result == value;
}

-(void)add:(NSInteger)value {
    _result += value;
}
-(void)sub:(NSInteger)value {
    _result -= value;
}
@end
