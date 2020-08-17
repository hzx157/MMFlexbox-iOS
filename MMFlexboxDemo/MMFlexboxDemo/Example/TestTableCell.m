/**
 * Copyright (c) 2020-present, huangzhenxiang, Inc.
 * email: 317804760@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#import "TestTableCell.h"

@interface TestTableCell()
{
    UIImageView* head;
    UILabel* name;
    UILabel* type;
    UILabel* date;
    UILabel* title;
    UILabel* content;
}
@end
@implementation TestTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
//+(void)load{
//
//    NSLog(@"load---load--load=%@",self);
//}
//+(void)initialize{
//    
//    
//    
//      NSLog(@"initialize---initialize--class=%@",self);
//}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
// 因为仅content影响布局
-(void)setData:(NSDictionary*)data ForHeight:(BOOL)forHeight
{
    if(!forHeight){
        name.text = [data objectForKey:@"name"];
        type.text = [data objectForKey:@"type"];
        date.text = [data objectForKey:@"date"];
        title.text = [data objectForKey:@"title"];
    }
    content.text = [data objectForKey:@"content"];
}
@end
