//
//  ViewController.m
//  RetainDemo
//
//  Created by Donly Chan on 12-7-23.
//  Copyright (c) 2012年 MAGICALBOY. All rights reserved.
//

#import "ViewController.h"

#import "UserModel.h"
#import "UserViewController.h"

@implementation ViewController

@synthesize user;
@synthesize userId;
@synthesize nameLabel;

- (void)dealloc {
    NSLog(@"%@ dealloc", self);
    
    [user release];
    
    [userId release];
    [nameLabel release];
    
    [super dealloc];
}

- (id)initWithUser:(UserModel *)user_ {
    if (self = [super initWithNibName:@"ViewController" bundle:nil]) {
        user = [user_ retain];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@ viewDidLoad", self);
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    userId.text = [user.userId stringValue];
    nameLabel.text = user.username;
}

- (void)viewDidUnload
{
    [self setUserId:nil];
    [self setNameLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    NSLog(@"%@ viewDidUnload", self);
    [self setUser:nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Edit
- (IBAction)edit:(id)sender {
    UserViewController *vc = [[UserViewController alloc] initWithUser:user];
    [self.navigationController pushViewController:vc animated:YES];
    [vc release];
}

@end
