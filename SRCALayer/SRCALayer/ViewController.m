//
//  ViewController.m
//  SRCALayer
//
//  Created by ShawnRufus on 2022/4/7.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>

#define kSCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define kSCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
 
    
    //    UIView *v1 = [[UIView alloc] init];
    //    CALayer *c1 = [[CALayer alloc] init];
    //
    //
    //    NSLog(@"v1对象实际需要的内存大小: %zd", class_getInstanceSize([v1 class]));
    //    NSLog(@"v1对象实际分配的内存大小: %zd", malloc_size((__bridge const void *)(v1)));
    //    NSLog(@"c1对象实际需要的内存大小: %zd", class_getInstanceSize([c1 class]));
    //    NSLog(@"c1对象实际分配的内存大小: %zd", malloc_size((__bridge const void *)(c1)));
        
     
        
        UIImageView *imgV1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        imgV1.image = [UIImage imageNamed:@""];
        [self.view addSubview:imgV1];
        
        CALayer *c1 = [[CALayer alloc] init];
        c1.contents = [UIImage imageNamed:@""];
        c1.frame = CGRectMake(0, 0, 100, 100);
        [self.view.layer addSublayer:c1];
        
        NSLog(@"v1对象实际需要的内存大小: %zd", class_getInstanceSize([imgV1 class]));
        NSLog(@"v1对象实际分配的内存大小: %zd", malloc_size((__bridge const void *)(imgV1)));
        NSLog(@"c1对象实际需要的内存大小: %zd", class_getInstanceSize([c1 class]));
        NSLog(@"c1对象实际分配的内存大小: %zd", malloc_size((__bridge const void *)(c1)));
    
}


@end
