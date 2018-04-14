//
//  ViewController.m
//  HZLocationConverterExample
//
//  Created by user on 2018/4/14.
//  Copyright © 2018年 CocoaJason. All rights reserved.
//

#import "ViewController.h"
#import <HZLocationConverter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CLLocationCoordinate2D wgsLoca = (CLLocationCoordinate2DMake( 31.146596,121.352525));
    CLLocationCoordinate2D masLoca = [HZLocationConverter transformFromWGSToGCJ:wgsLoca];
    NSDictionary *mas_Dic = @{
                              @"longitude":@(masLoca.longitude),
                              @"latitude":@(masLoca.latitude)
                              };
    NSLog(@"mas_Dic  %@",mas_Dic);
    
    CLLocationCoordinate2D baiduLoca = [HZLocationConverter transformFromGCJToBaidu:masLoca];
    NSDictionary *baidu_dic = @{
                                @"longitude":@(baiduLoca.longitude),
                                @"latitude":@(baiduLoca.latitude)
                                };
    NSLog(@"baidu_dic %@",baidu_dic);

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
