//
//  ViewController.h
//  RetainDemo
//
//  Created by Donly Chan on 12-7-23.
//  Copyright (c) 2012年 MAGICALBOY. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UserModel;

@interface ViewController : UIViewController

@property (nonatomic, retain) UserModel *user;

@property (retain, nonatomic) IBOutlet UILabel *userId;
@property (retain, nonatomic) IBOutlet UILabel *nameLabel;

- (id)initWithUser:(UserModel *)user;
- (IBAction)edit:(id)sender;

@end
