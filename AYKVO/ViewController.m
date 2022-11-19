//
//  ViewController.m
//  AYKVO
//
//  Created by 王亚威 on 2022/10/17.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+KVO.h"
#import "函数式/JisuanqiManager.h"
@interface ViewController ()
@property(nonatomic, strong)Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 函数式编程
    JisuanqiManager *manager = [[JisuanqiManager alloc] init];
    [manager add:1];
    [manager add:1];
    
    [[[manager jisuan:^(NSInteger result) {
        result += 5;
        result -= 5;
        return result;
    }] log] equal:2] ;
    
    
    
 
    // 响应式编程
    _p = [[Person alloc] init];
    [self.p ay_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"wyw----age--%ld", _p.age);
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _p.age += 1;
//    _p->_age += 1;
    NSLog(@"wyw----age--%ld", _p.age);
}


-(void)dealloc {
    [_p removeObserver:self forKeyPath:@"age"];
}
@end
