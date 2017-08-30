//
//  AppDelegate.m
//  TuSDKVideoDemo
//
//  Created by Yanlin on 3/5/16.
//  Copyright © 2016 TuSDK. All rights reserved.
//

#import "AppDelegate.h"
#import "TuSDKFramework.h"
#import "MainViewController.h"

#import <Bugly/Bugly.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 可选: 设置日志输出级别 (默认不输出)
    [TuSDK setLogLevel:lsqLogLevelDEBUG];
    
    /**
     *  启动Bugly收集错误报告
     */
    [self startBugly];
    
    /**
     *  初始化SDK，应用密钥是您的应用在 TuSDK 的唯一标识符。每个应用的包名(Bundle Identifier)、密钥、资源包(滤镜、贴纸等)三者需要匹配，否则将会报错。
     *
     *  @param appkey 应用秘钥 (请前往 http://tusdk.com 申请秘钥)
     */
    [TuSDK initSdkWithAppKey:@"5e501981b069355a-04-ewdjn1"];
    
    /**
     *  指定开发模式,需要与lsq_tusdk_configs.json中masters.key匹配， 如果找不到devType将默认读取master字段
     *  如果一个应用对应多个包名，则可以使用这种方式来进行集成调试。
     */
    // [TuSDK initSdkWithAppKey:@"828d700d182dd469-04-ewdjn1" devType:@"debug"];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor clearColor];
    
    // 初始化根控制器
    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:[MainViewController controller]];
    [self.window makeKeyAndVisible];
    
    return YES;
}

/**
 *  启动Bugly收集错误报告
 */
- (void) startBugly;
{
    [Bugly startWithAppId:@"55e5fe120e"];
}

-(void)applicationDidReceiveMemoryWarning:(UIApplication *)application;
{
    lsqLDebug(@"applicationDidReceiveMemoryWarning");
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
