//
//  UserModel.h
//  RetainDemo
//
//  Created by Donly Chan on 12-7-23.
//  Copyright (c) 2012年 MAGICALBOY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

@property (nonatomic, copy) NSString *username;
@property (nonatomic, retain) NSNumber *userId;

@end
