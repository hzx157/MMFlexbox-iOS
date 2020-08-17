//
//  ViewController.m
//  MMFlexboxDemo
//
//  Created by mac on 2020/8/17.
//  Copyright © 2020 Huangzhenxiang. All rights reserved.
//

#import "ViewController.h"
#import "TestVC.h"
#import "TestTableVC.h"
#import "TestScrollVC.h"
#import "TestModalVC.h"
#import "TestLoginVC.h"
#import "DemoFlexVC.h"
#import "TextViewVC.h"
#import "ControlsVC.h"
#import "FrameVC.h"
#import "TestCollectionViewVC.h"
#import "TestFrameView.h"

@interface ViewController ()
{
    FlexScrollView* _scroll;
    UILabel* _label;
}
@end
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.title = @"FlexLib Demo";
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)onTest:(id)sender {
    TestVC* vc=[[TestVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTestTable:(id)sender {
    TestTableVC* vc=[[TestTableVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTestScrollView:(id)sender {
    TestScrollVC* vc=[[TestScrollVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTestModalView:(id)sender {
    TestModalVC* vc=[[TestModalVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTestLoginView:(id)sender {
    TestLoginVC* vc=[[TestLoginVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onCollectionView{
    TestCollectionViewVC* vc=[[TestCollectionViewVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTextView:(id)sender {
    TextViewVC* vc=[[TextViewVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onViewLayouts:(id)sender {
    [FlexLayoutViewerVC presentInVC:self];
}
- (void)onControls{
    ControlsVC* vc=[[ControlsVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onFrameVC{
    FrameVC* vc=[[FrameVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)onExplorerFlex
{
    [FlexHttpVC presentInVC:self];
}
-(void)onFrameView
{
    CGRect rcScreen = [[UIScreen mainScreen]bounds];
    CGRect rcFrame = CGRectMake(rcScreen.size.width/2-200, 100, 400, 500);
    TestFrameView* frameview=[[TestFrameView alloc]initWithFlex:nil Frame:rcFrame Owner:nil];
    [self.view addSubview:frameview];
}
@end
