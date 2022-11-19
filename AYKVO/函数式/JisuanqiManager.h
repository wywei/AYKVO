//
//  JisuanqiManager.h
//  AYKVO
//
//  Created by 王亚威 on 2022/10/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JisuanqiManager : NSObject
@property(nonatomic, assign)NSInteger result;

-(void)add:(NSInteger)value;
-(void)sub:(NSInteger)value;
-(JisuanqiManager *)log;
-(BOOL)equal:(NSInteger)value;
-(JisuanqiManager *)jisuan:(NSInteger(^)(NSInteger result))block;
@end

NS_ASSUME_NONNULL_END
