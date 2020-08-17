/**
 * Copyright (c) 2020-present, huangzhenxiang, Inc.
 * email: 317804760@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#import "UIImageView+Flex.h"
#import "UIView+Flex.h"
#import "../FlexUtils.h"
#import "../FlexNode.h"
#import <objc/runtime.h>
#import <SDWebImage/UIImageView+WebCache.h>

@implementation UIImageView (Flex)

FLEXSET(source)
{
    UIImage* img = [UIImage imageNamed:sValue inBundle:[owner bundleForImages] compatibleWithTraitCollection:nil];
    self.image = img ;
}
FLEXSET(sdsource)
{
    
    UIImage* img = [UIImage imageNamed:sValue inBundle:[owner bundleForImages] compatibleWithTraitCollection:nil];
    if(!img){
        
    }
    [self sd_setImageWithURL:[NSURL URLWithString:sValue] placeholderImage:img];
  
}
FLEXSET(highlightSource)
{
    UIImage* img = [UIImage imageNamed:sValue inBundle:[owner bundleForImages] compatibleWithTraitCollection:nil];
    self.highlightedImage = img ;
}
FLEXSET(interactEnable)
{
    self.userInteractionEnabled = String2BOOL(sValue);
}
@end
