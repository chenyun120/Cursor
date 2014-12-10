//
//  ViewController.m
//  Cursor
//
//  Created by Chenyun on 14/12/10.
//  Copyright (c) 2014年 geek-zoo. All rights reserved.
//

#import "ViewController.h"
#import "CursorView.h"

@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	// 1
	NSArray * bgColorArrayOne   = @[[UIColor redColor],[UIColor grayColor]];
	NSArray * labelNameArrayOne = @[@"标准",@"过高"];
	NSArray * labelNumArrayOne	= @[@"9"];

	CursorView * cell = [[CursorView alloc] initWithFrame:CGRectMake(20, 50, self.view.frame.size.width - 40, 110)];
	cell.title = @"年龄";
	cell.bgColorArray = bgColorArrayOne;
	cell.labelNameArray = labelNameArrayOne;
	cell.labelNumArray = labelNumArrayOne;
	[cell initView];
	[self.view addSubview:cell];

	// 2
	NSArray * bgColorArrayTwo   = @[[UIColor redColor],[UIColor grayColor],[UIColor blueColor]];
	NSArray * labelNameArrayTwo = @[@"标准",@"略高",@"过高"];
	NSArray * labelNumArrayTwo	= @[@"9",@"19"];

	CursorView * cellTwo = [[CursorView alloc] initWithFrame:CGRectMake(20, 190, self.view.frame.size.width - 40, 110)];
	cellTwo.title = @"年龄";
	cellTwo.bgColorArray = bgColorArrayTwo;
	cellTwo.labelNameArray = labelNameArrayTwo;
	cellTwo.labelNumArray = labelNumArrayTwo;
	[cellTwo initView];
	[self.view addSubview:cellTwo];
	
	// 3
	NSArray * bgColorArrayThree   = @[[UIColor redColor],[UIColor grayColor],[UIColor blueColor],[UIColor greenColor]];
	NSArray * labelNameArrayThree = @[@"略低",@"标准",@"略高",@"过高"];
	NSArray * labelNumArrayThree	= @[@"9",@"19",@"29"];
	
	CursorView * cellThree = [[CursorView alloc] initWithFrame:CGRectMake(20, 320, self.view.frame.size.width - 40, 110)];
	cellThree.title = @"年龄";
	cellThree.bgColorArray = bgColorArrayThree;
	cellThree.labelNameArray = labelNameArrayThree;
	cellThree.labelNumArray = labelNumArrayThree;
	[cellThree initView];
	[self.view addSubview:cellThree];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
