/**
 * Copyright (c) 2020-present, huangzhenxiang, Inc.
 * email: 317804760@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "FlexTouchMaskView.h"
#import "YogaKit/UIView+Yoga.h"

@implementation FlexTouchMaskView

-(void)markChildDirty:(UIView*)child
{
}
-(void)postCreate
{
    self.superview.clipsToBounds = YES ;
    self.hidden = YES;
}
@end
