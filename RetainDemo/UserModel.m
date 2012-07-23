//
//  UserModel.m
//  RetainDemo
//
//  Created by Donly Chan on 12-7-23.
//  Copyright (c) 2012年 MAGICALBOY. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

@synthesize userId;
@synthesize username;

- (void)dealloc {
    [username release];
    [userId release];
    
    [super dealloc];
}


@end
