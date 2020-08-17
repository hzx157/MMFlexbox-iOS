/**
 * Copyright (c) 2020-present, huangzhenxiang, Inc.
 * email: 317804760@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#import "TestModalVC.h"
#import "UIView+Flex.h"
@interface TestModalVC ()
{
    FlexModalView* modal;
}

@end

@implementation TestModalVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Modal Demo";
}

- (void)dealloc
{
    NSLog(@"TestModalVC dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tapCloseAction
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)tapModalTop:(UITapGestureRecognizer*)click
{
    [modal setViewAttr:@"position" Value:@"top"];
    [modal showModalInView:self.view Anim:YES];
    UIView *view = click.view;
    NSLog(@"-----%@--%@",view.viewAttrs.name,view.viewAttrs);
}
-(void)tapModalCenter:(FlexClickRange*)click
{
    [modal setViewAttr:@"position" Value:@"center"];
    [modal showModalInView:self.view Anim:YES];
}
-(void)tapModalBottom:(FlexClickRange*)click
{
    [modal setViewAttr:@"position" Value:@"bottom"];
    [modal showModalInView:self.view Anim:YES];
}
-(void)closeModal
{
    [modal hideModal:YES];
}
@end
