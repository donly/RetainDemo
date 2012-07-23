//
//  UserViewController.m
//  RetainDemo
//
//  Created by Donly Chan on 12-7-23.
//  Copyright (c) 2012年 MAGICALBOY. All rights reserved.
//

#import "UserViewController.h"
#import "UserModel.h"

@implementation UserViewController

@synthesize user;
@synthesize nameField;
@synthesize userIdLabel;

- (void)dealloc {
    NSLog(@"%@ dealloc", self);
    
    [user release];
    
    [nameField release];
    [userIdLabel release];
    [super dealloc];
}

- (id)initWithUser:(UserModel *)user_ {
    if (self = [super initWithNibName:@"UserViewController" bundle:nil]) {
        user = [user_ retain];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = [NSString stringWithFormat:@"Edit %@", user.username];
    userIdLabel.text = [user.userId stringValue];
    nameField.text = user.username;
}

- (void)viewDidUnload
{
    [self setNameField:nil];
    [self setUserIdLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    NSLog(@"%@ viewDidUnload", self);
    [self setUser:nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Save
- (IBAction)save:(id)sender {
    user.username = nameField.text;
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
