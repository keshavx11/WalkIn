//
//  Details.h
//  TAG
//
//  Created by Keshav Bansal on 25/01/15.
//  Copyright (c) 2015 Keshav Bansal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBJson.h"

@interface Details : UIViewController<UIScrollViewDelegate,UIActionSheetDelegate,NSURLConnectionDataDelegate>
{
    NSMutableData *webdata;
    IBOutlet UIImageView *img,*imgB;
    IBOutlet UIScrollView *scrllView,*imgScroll;
    IBOutlet UILabel *name,*description,*delivery,*speciality,*deliver;
    IBOutlet UITextView *phone,*address,*time,*special;
}

@property (strong, nonatomic) IBOutlet UIImageView *a;
@property (strong, nonatomic) IBOutlet UIImageView *b;
@property (strong, nonatomic) IBOutlet UIImageView *c;
@property (strong, nonatomic) IBOutlet UIImageView *d;
@property (strong, nonatomic) IBOutlet UIImageView *e;
@property (strong, nonatomic) IBOutlet UIPageControl *pageCtrl;
@property(nonatomic)int n,k;
@property(strong,nonatomic)NSDictionary *dict;
@property (nonatomic, assign) CGFloat lastContentOffset;

- (IBAction)changePage;

@end
