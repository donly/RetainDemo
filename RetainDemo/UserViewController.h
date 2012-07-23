//
//  UserViewController.h
//  RetainDemo
//
//  Created by Donly Chan on 12-7-23.
//  Copyright (c) 2012年 MAGICALBOY. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UserModel;

@interface UserViewController : UIViewController

@property (nonatomic, retain) UserModel *user;

@property (retain, nonatomic) IBOutlet UITextField *nameField;
@property (retain, nonatomic) IBOutlet UILabel *userIdLabel;

- (id)initWithUser:(UserModel *)user;

- (IBAction)save:(id)sender;

@end
