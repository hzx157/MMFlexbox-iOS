/**
 * Copyright (c) 2020-present, huangzhenxiang, Inc.
 * email: 317804760@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

/*
 该例子演示了在UITableView的cell中使用xml布局
 */

@interface TestTableCell : FlexBaseTableCell

-(void)setData:(NSDictionary*)data ForHeight:(BOOL)forHeight;

@end
