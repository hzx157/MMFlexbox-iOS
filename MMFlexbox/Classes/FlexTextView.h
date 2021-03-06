/**
 * Copyright (c) 2020-present, huangzhenxiang, Inc.
 * email: 317804760@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>

//
@interface FlexTextView : UITextView

@property(nonatomic,readonly) UILabel *placeholdLabel;
@property(nonatomic,strong) NSString *placeholder;
@property(nonatomic,strong) UIColor *placeholderColor;
@property(nonatomic,nonnull,strong)  NSAttributedString *attributePlaceholder;
@property(nonatomic,assign) CGPoint location;

- (void)updatePlaceholder;

@end
