//
//  CursorView.h
//  Cursor
//
//  Created by Chenyun on 14/12/9.
//  Copyright (c) 2014年 geek-zoo. All rights reserved.
//

#import "CursorView.h"

@interface CursorView ()
{
	int _bgWidth;
}

@property (nonatomic, strong) UILabel *		indexType;

@end

@implementation CursorView

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];

	if ( self )
	{
		self.backgroundColor = [UIColor blackColor];
	}

	return self;
}

- (void)initView
{
	self.indexType = [[UILabel alloc] initWithFrame:CGRectMake(0, 14, self.frame.size.width, 20)];
	self.indexType.font = [UIFont systemFontOfSize:15];
	self.indexType.textAlignment = NSTextAlignmentCenter;
	self.indexType.textColor = [UIColor whiteColor];
	self.indexType.text = self.title;
	[self addSubview:self.indexType];

	[self loadStstusLine];
	[self setImagView:0];
}

- (void)loadStstusLine
{
	_bgWidth = (self.frame.size.width - 10) / self.bgColorArray.count;

	for ( int i = 0; i<self.bgColorArray.count; i++)
	{
		UIView * bgview = [[UIView alloc] initWithFrame:CGRectMake(5 + (i * _bgWidth), 70,_bgWidth, 2)];
		bgview.backgroundColor = self.bgColorArray[i];
		[self addSubview:bgview];
	}

	for ( int i = 0; i<self.labelNameArray.count; i++)
	{
		UILabel * labelName = [[UILabel alloc] initWithFrame:CGRectMake(5 + (i * _bgWidth) + _bgWidth / 2 - 20, 79, 42, 20)];

		labelName.text = self.labelNameArray[i];
		labelName.textColor = self.bgColorArray[i];
		labelName.textAlignment = NSTextAlignmentCenter;
		labelName.font = [UIFont systemFontOfSize:12];
		[self addSubview:labelName];
	}

	for ( int i = 0; i<self.bgColorArray.count - 1; i++)
	{
		UIView * lineView = [[UIView alloc] initWithFrame:CGRectMake( 5 + _bgWidth + (i * _bgWidth), 65,2, 11)];
		lineView.backgroundColor = self.bgColorArray[i];
		[self addSubview:lineView];

		UILabel * labelNum = [[UILabel alloc] initWithFrame:CGRectMake(5 + _bgWidth + (i * _bgWidth) - 19,41, 42, 20)];
		labelNum.text = self.labelNumArray[i];
		labelNum.textColor = self.bgColorArray[i];
		labelNum.textAlignment = NSTextAlignmentCenter;
		labelNum.font = [UIFont systemFontOfSize:11];
		[self addSubview:labelNum];
	}
}

- (void)setImagView:(NSInteger)index
{
	UIImage * image = [UIImage imageNamed:@"ico_location_red"];

	UIImageView * imageView = [[UIImageView alloc] initWithImage:image];
	imageView.frame = CGRectMake(5 + (  index * _bgWidth ) + _bgWidth / 2 - 4 , 50, 9, 13);
	[self addSubview:imageView];
}
@end
