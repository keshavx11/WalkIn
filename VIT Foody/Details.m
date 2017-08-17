//
//  Details.m
//  TAG
//
//  Created by Keshav Bansal on 25/01/15.
//  Copyright (c) 2015 Keshav Bansal. All rights reserved.
//

#import "Details.h"

@interface Details ()

@end

@implementation Details

- (void)viewDidLoad {
    [super viewDidLoad];
    img.layer.cornerRadius = 50;
    img.layer.masksToBounds = YES;
    img.layer.borderWidth = 0.1;
    imgB.layer.cornerRadius = 50;
    imgB.layer.masksToBounds = YES;
    imgB.layer.borderWidth = 0.1;
    scrllView.contentSize=CGSizeMake(scrllView.frame.size.width, scrllView.frame.size.height+200);
    imgScroll.contentSize=CGSizeMake(640,imgScroll.frame.size.height);
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"back.png"]  forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
    backBtn.frame = CGRectMake(0, 0, 30, 30);
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = backButton;
    name.text = [self.dict valueForKey:@"name"];
    description.text=[self.dict valueForKey:@"description"];
    phone.text=[self.dict valueForKey:@"contact"];
    address.text=[self.dict valueForKey:@"address"];
    time.text=[self.dict valueForKey:@"timings"];
    delivery.text=[self.dict valueForKey:@"home_delivery"];
    special.text=[self.dict valueForKey:@"speciality"];
    [self rate:[self.dict  valueForKey:@"ratings"]];
    if (self.n==3) {
        special.hidden=YES;
        delivery.hidden=YES;
        speciality.hidden=YES;
        deliver.hidden=YES;
    }
    [self imageset];
  /*  NSMutableURLRequest *req=[[NSMutableURLRequest alloc]init];
   // if ([[self.dict valueForKey:@"name"] isEqualToString:@""])
    NSURL *url=[NSURL URLWithString:[NSString stringWithFormat:@"http://vitcreativityclub.com/api/images/restaurant/alankar.jpg"]];
    [req setURL:url];
    NSURLConnection *con=[[NSURLConnection alloc]initWithRequest:req delegate:self];
    if (con) {
        NSLog(@"yes");
    }
    else
        NSLog(@"no");
    webdata=[[NSMutableData alloc]init];*/
    // Do any additional setup after loading the view from its nib.
}
/*-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [webdata setLength:0];
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [webdata appendData:data];
    img.image=[UIImage imageWithData:data];
    img.layer.cornerRadius = 50;
    img.layer.masksToBounds = YES;
    img.layer.borderWidth = 0.1;
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{

}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"can't connect");
}
*/
-(void)imageset
{
    if (self.n==2) {
            if ([[self.dict valueForKey:@"rid"] isEqualToString:@"1"]) {
                img.image=[UIImage imageNamed:@"poor.jpg"];
                imgB.image=[UIImage imageNamed:@"Beverages.jpg"];
            }
            if ([[self.dict valueForKey:@"rid"] isEqualToString:@"2"]) {
                img.image=[UIImage imageNamed:@"ave.jpg"];
                imgB.image=[UIImage imageNamed:@"foood.jpg"];
            }
            if ([[self.dict valueForKey:@"rid"] isEqualToString:@"3"]) {
                img.image=[UIImage imageNamed:@"rich.jpg"];
                imgB.image=[UIImage imageNamed:@"burnpkt.jpg"];
            }
    }
    if (self.n==3) {
            NSInteger a=(int)[self.dict valueForKey:@"id"];
            if (a==19) {
                img.image=[UIImage imageNamed:@"shop1.jpg"];
                imgB.image=[UIImage imageNamed:@"shop2.jpg"];
            }
            if (a==35) {
                img.image=[UIImage imageNamed:@"hall2.jpg"];
                imgB.image=[UIImage imageNamed:@"hall1.jpg"];
            }
            if (a==51) {
                img.image=[UIImage imageNamed:@"tour1.jpg"];
                imgB.image=[UIImage imageNamed:@"tour2.jpg"];
            }
    }
}
-(void)rate:(NSString *) stars
{
    if([stars isEqualToString:@"1"])
    {
        self.a.image=[UIImage imageNamed:@"star.png"];
    }
    else if([stars isEqualToString:@"2"])    {
        self.a.image=[UIImage imageNamed:@"star.png"];
        self.b.image=[UIImage imageNamed:@"star.png"];
    }
    else if([stars isEqualToString:@"3"])
    {
        self.a.image=[UIImage imageNamed:@"star.png"];
        self.b.image=[UIImage imageNamed:@"star.png"];
        self.c.image=[UIImage imageNamed:@"star.png"];
    }
    else if([stars isEqualToString:@"4"])
    {
        self.a.image=[UIImage imageNamed:@"star.png"];
        self.b.image=[UIImage imageNamed:@"star.png"];
        self.c.image=[UIImage imageNamed:@"star.png"];
        self.d.image=[UIImage imageNamed:@"star.png"];
    }
    else if([stars isEqualToString:@"5"])
    {
        self.a.image=[UIImage imageNamed:@"star.png"];
        self.b.image=[UIImage imageNamed:@"star.png"];
        self.c.image=[UIImage imageNamed:@"star.png"];
        self.d.image=[UIImage imageNamed:@"star.png"];
        self.e.image=[UIImage imageNamed:@"star.png"];
    }
}
- (void)goback
{
    [self.navigationController popViewControllerAnimated:YES];
}
/*-(void)act
{
    UIActionSheet *as=[[UIActionSheet alloc]initWithTitle:@"" delegate:nil cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Add to favourites",@"GO", nil];
    as.delegate=self;
    as.actionSheetStyle =UIActionSheetStyleBlackTranslucent;
    [as showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==0) {
        NSLog(@"abc");
    }
    if (buttonIndex==1){
        NSLog(@"sss");
    }
    //[actionSheet dismissWithClickedButtonIndex:2 animated:YES];
}*/
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changePage
{
    CGRect frame;
    frame.origin.x = imgScroll.frame.size.width * self.pageCtrl.currentPage;
    frame.origin.y = imgScroll.frame.origin.y;
    frame.size = imgScroll.frame.size;
    [imgScroll scrollRectToVisible:frame animated:YES];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    int n;
    if (self.lastContentOffset > scrollView.contentOffset.x)
        n=1;
    else if (self.lastContentOffset < scrollView.contentOffset.x)
        n=2;
    self.lastContentOffset = scrollView.contentOffset.x;
    if (n==1) {
        if (self.pageCtrl.currentPage>0) {
        self.pageCtrl.currentPage--;
        }
    }
    else
    {
        if (self.pageCtrl.currentPage<2){
        self.pageCtrl.currentPage++;
        }
    }
    NSLog(@"%d",(int)self.pageCtrl.currentPage);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
