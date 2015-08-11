//
//  ViewController.m
//  YourHome
//
//  Created by LiuFei on 15/7/2.
//  Copyright (c) 2015年 cn.com.uvoice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *headerScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 375, 50)];
    [headerScroll setScrollEnabled:YES];
    [headerScroll setDelegate:self];
    [headerScroll setContentSize:CGSizeMake(375 / 5 * 9, 0)];
    [headerScroll setBackgroundColor:[UIColor colorWithRed:54 / 255.0 green:213 / 255.0 blue:153 / 255.0 alpha:1]];
    [headerScroll setAlwaysBounceHorizontal:YES];
    
    [self.view addSubview:headerScroll];
    
    NSMutableArray *titleArray = [NSMutableArray arrayWithObjects:@"我0", @"串门1", @"宿舍2", @"我3", @"串门4", nil];
    for (int i = 0; i < 5; i ++) {
        UIButton *headerButton = [[UIButton alloc] initWithFrame:CGRectMake(375 / 5 * (i * 2), 0, 375 / 5, 50)];
        [headerButton setTitle:titleArray[i] forState:UIControlStateNormal];
        [headerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        [headerScroll addSubview:headerButton];
    }
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
//    if (scrollView.contentOffset.x >= 375 / 5 / 2) {
//        CGPoint offset = scrollView.contentOffset;
//        [scrollView setContentOffset:CGPointMake(offset.x + 375 / 5 * 2, 0) animated:YES];
//
//    } else {
//        [scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
//    }

//    CGPoint offset = scrollView.contentOffset;
//    [scrollView setContentOffset:CGPointMake(offset.x + 375 / 5 * 2, 0) animated:YES];
    
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"offset.x = %f", scrollView.contentOffset.x);
    }

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
   
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//    NSLog(@"x = %f", scrollView.contentOffset.x);
//    if (scrollView.contentOffset.x > 375 / 5 * 4) {
//        [scrollView setContentOffset:CGPointMake(0, 0) animated:NO];
//    } else {
////        [scrollView setContentOffset:CGPointMake(375 / 5 * 2, 0) animated:YES];
//    }
    
    NSInteger n = scrollView.contentOffset.x / 75;
    CGPoint offset = scrollView.contentOffset;
    NSLog(@"n = %d", n);
//    if (offset.x > 0) {
        [scrollView setContentOffset:CGPointMake(375 / 5 * 2 + offset.x, 0) animated:YES];
        
        
//    } else {
//        [scrollView setContentOffset:CGPointMake(-375 / 5 * 2, 0) animated:YES];
    
//    }


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
