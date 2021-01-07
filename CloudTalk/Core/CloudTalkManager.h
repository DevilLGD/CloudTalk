//
//  CloudTalkManager.h
//  CloudTalkDemo
//
//  Created by liuyubao_iMac on 2018/9/14.
//  Copyright © 2018年 xinghaiwulian. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CTVoidBlock)(void);
typedef void (^CTSuccessBlock)(id obj);
typedef void (^CTErrorBlock)(int errId, NSString *errMsg);

@class CloudTalkManager;
@protocol CloudTalkManagerDelegate<NSObject>

/**
 * @brief 被挤下线
 *
 * @param msg - 提示内容
 */
- (void)cloudTalk:(CloudTalkManager *)manager forceOffline:(NSString *)msg;

@end

@interface CloudTalkManager : NSObject

@property (nonatomic, weak) id<CloudTalkManagerDelegate> delegate;

+ (instancetype)shared;



/**
 * @brief 初始化云对讲
 *
 * @param isRelease - 是否发布环境
 * @param certId - 数字动力证书ID
 */
- (void)initCloudTalk:(BOOL)isRelease certid:(NSString *)certId;


@end
