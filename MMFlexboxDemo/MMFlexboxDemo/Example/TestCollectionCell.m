/**
 * Copyright (c) 2020-present, huangzhenxiang, Inc.
 * email: 317804760@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#import "TestCollectionCell.h"
#import <objc/runtime.h>
@interface TestCollectionCell()

//@property(nonatomic,strong) UILabel* label;
//@property(nonatomic,strong) UIImageView* image1;

@end

@implementation TestCollectionCell

-(void)onInit{
//    //    self.label.text = text;
////    Ivar ivar = class_getInstanceVariable([self class], [[NSString stringWithFormat:@"%@", @"label1"] UTF8String]);
//   objc_property_t pt =class_getProperty(self.class, "label1");
////    const char *pName = property_getName(pt);
//    if(!pt){
//        objc_property_attribute_t type = { "T", [[NSString stringWithFormat:@"@\"%@\"",NSStringFromClass([UILabel class])] UTF8String] }; //type
//          //        objc_property_attribute_t type = { "T", [[NSString stringWithFormat:@"@\"%@\"",NSStringFromClass([NSString class])] UTF8String] }; //type
//              //            objc_property_attribute_t type = { "T", "@\"NSString\""}; //type
//                                      objc_property_attribute_t ownership0 = { "&", "N" }; // C = copy
//              //                        objc_property_attribute_t ownership = { "N", "" }; //N = nonatomic
//              //                        objc_property_attribute_t backingivar  = { "V", [[NSString stringWithFormat:@"_%@", self.name] UTF8String] };  //variable name
//                          objc_property_attribute_t backingivar  = { "V", "label1"};  //variable name
//                                      objc_property_attribute_t attrs[] = { type,ownership0,backingivar};//这个数组一定要按照此顺序才行
//                                      BOOL add = class_addProperty([self class], "label1", attrs, 3);
//                                      if (add) {
//
//                                          [self getIvars];
//
////                                           NSLog(@"hahah添加成功\n %@",pt->name);
//                                             Ivar ivar = class_getInstanceVariable([self class], [[NSString stringWithFormat:@"%@", @"label1"] UTF8String]);
//                                          if(ivar){
//                                                 NSLog(@"hahah添加成功\n");
//                                          }
//                                      }else{
//                                          NSLog(@"hahah添加失败\n");
//                                      }
//    }
//
}

- (void)getIvars {
    
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    for (unsigned int i = 0; i < count; i ++) {
        objc_property_t property = properties[i];
        const char *pName = property_getName(property);
        NSString *name = [NSString stringWithFormat:@"pname:%s", pName];
        unsigned int aCount = 0;
        objc_property_attribute_t *attributes = property_copyAttributeList(property, &aCount);
        for (unsigned int j = 0; j < aCount; j ++) {
            objc_property_attribute_t attribute = attributes[j];
            const char *aName = attribute.name;
            const char *aValue = attribute.value;
            NSString *a = [NSString stringWithFormat:@"%@ aName:%s, aValue:%s",name, aName, aValue];
            name = a;
        }
//        if (!propertiesList) {
//            propertiesList = [NSMutableArray array];
//        }
        NSString *name1 = [NSString stringWithUTF8String:pName];
               NSLog(@"-----%@",[self valueForKey:name1]);
        NSLog(@"%@", name);
//        [propertiesList addObject:name];
    }
    
    return;
//    unsigned int count;
//    if (class_addIvar([self class], "rtAddedIvar", sizeof(id), log2(sizeof(id)), "@")) {
//        NSLog(@"add ivar success");
//    } else {
//        NSLog(@"add ivar failed");
//    }
//
//
//    Ivar *ivars = class_copyIvarList([self class], &count);
//    for (unsigned int i = 0; i < count; i++) {
//        Ivar ivar = ivars[i];
//        const char *ivarName = ivar_getName(ivar);
//        ptrdiff_t offset = ivar_getOffset(ivar);
//        const char *type = ivar_getTypeEncoding(ivar);
//        NSString *string = [NSString stringWithFormat:@"ivar:%s, offset:%zd, type:%s", ivarName, offset, type];
////        if (!ivarsList) {
////            ivarsList = [NSMutableArray array];
////        }
//        NSLog(@"%@", string);
////        [ivarsList addObject:string];
//    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
            
    }
    return self;
}

  
//-(void)setLabel:(UILabel *)label{
//    
//}
//-(UILabel *)label{
//    return nil;
//}
-(void)setText:(NSString*)text
{

    NSLog(@"--------%@",[self findByName:@"label"].nodeDeatil.name);
    
    NSLog(@"%@--%@",[self findByName:@"label"], NSStringFromClass([self findByName:@"label"].class));
    ((UILabel *)[self findByName:@"label"]).text = text;
//    NSLog(@"%@", [self findByName:@"image"]);
    return;
     objc_property_t pt =class_getProperty(self.class, "label");
    //
    if(pt){
        const char *pName = property_getName(pt);
       NSString *name = [NSString stringWithUTF8String:pName];
        NSLog(@"-----%@",[self valueForKey:name]);
        SEL setter = NSSelectorFromString(@"setLabel:");
           SEL getter = NSSelectorFromString(@"label");
           if ([self respondsToSelector:setter] && [self respondsToSelector:getter]) {
//               [self performSelector:setter withObject:@"NBA"];
//               id d = [self  performSelector:getter withObject:nil];
//               NSLog(@"d,%@",d);
           }
        [[self valueForKey:name] setValue:text forKey:@"text"];
        
        
        unsigned int aCount = 0;
               objc_property_attribute_t *attributes = property_copyAttributeList(pt, &aCount);
               for (unsigned int j = 0; j < aCount; j ++) {
                   objc_property_attribute_t attribute = attributes[j];
                   const char *aName = attribute.name;
                   const char *aValue = attribute.value;
                  
               }
        
        
    }
    unsigned int count = 0;

    
    
    Ivar ivar = class_getInstanceVariable([self class], [[NSString stringWithFormat:@"%@", text] UTF8String]);
    if(ivar){
          id nameVar = object_getIvar(self, ivar);
        [nameVar setValue:text forKeyPath:@"text"];
    }
    
    [self getIvars];
    NSLog(@"---%@",[self getVariableNamesByObject:self]);
}

//获取类的成员变量名
- (NSArray *)getVariableNamesByObject:(id)object
{
    unsigned int numIvars = 0;
    //获取类的所有成员变量
    Ivar * ivars = class_copyIvarList([object class], &numIvars);
    //定义一个数组来接收获取的属性名
    NSMutableArray *nameArray = [[NSMutableArray alloc] initWithCapacity:numIvars];
    for(int i = 0; i < numIvars; i++) {
        //得到单个的成员变量
        Ivar thisIvar = ivars[i];
        //得到这个成员变量的类型
        const char *type = ivar_getTypeEncoding(thisIvar);
        NSString *stringType =  [NSString stringWithCString:type encoding:NSUTF8StringEncoding];
        //此处判断非object-c类型时跳过
        if (![stringType hasPrefix:@"@"]) {
            continue;
        }
        //得到成员变量名
        NSString *variableName = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        [nameArray addObject:variableName];
        
        //这个函数可以得到成员变量的值
        //object_getIvar(object, thisIvar)
        
    }
    free(ivars);
    return nameArray;
}
@end
