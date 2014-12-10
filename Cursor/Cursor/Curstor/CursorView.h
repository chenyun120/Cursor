//
//  CursorView.h
//  Cursor
//
//  Created by Chenyun on 14/12/9.
//  Copyright (c) 2014年 geek-zoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CursorView : UIView
@property (nonatomic, copy) NSString * title;
@property (nonatomic, strong) NSArray * bgColorArray;
@property (nonatomic, strong) NSArray * labelNameArray;
@property (nonatomic, strong) NSArray * labelNumArray;

- (void)initView;

@end
