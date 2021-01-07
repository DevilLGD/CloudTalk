//
//  CloudTalkManager.m
//  CloudTalkDemo
//
//  Created by liuyubao_iMac on 2018/9/14.
//  Copyright © 2018年 xinghaiwulian. All rights reserved.
//

#import "CloudTalkManager.h"

/**
 * 登录错误码： errorCode
       1:亲，你登录的用户数据不合法
       2:亲，你登录的手机号不合法
       3:传入数据有误！
 */


@interface CloudTalkManager()
{
    CTVoidBlock _loginSucc; // 登录成功
    CTErrorBlock _loginFail; // 登录失败
    CTVoidBlock _callSucc; // 登录成功
    CTErrorBlock _callFail; // 登录失败
}

@property (nonatomic, copy) NSString *HttpURL;
@property (nonatomic, assign) BOOL isLogPrint;
@property (nonatomic, copy) NSString *certNum;
@property (nonatomic, assign) BOOL isRelease;
@property (nonatomic, assign) BOOL isCalling; // 正在被呼叫中
//@property (nonatomic, strong) Reachability *reachability;
//@property (nonatomic, assign) NetworkStatus curNetworkStatus;

@end

@implementation CloudTalkManager
// 全局变量
static  CloudTalkManager *_instance = nil;
// 初始化方法
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
        
    });
    return _instance;
}

+ (instancetype)shared
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}



/**
 * @brief 初始化云对讲
 *
 * @param isRelease - 是否发布环境
 * @param certId - 数字动力证书ID
 */
- (void)initCloudTalk:(BOOL)isRelease certid:(NSString *)certId {
    
}

@end
