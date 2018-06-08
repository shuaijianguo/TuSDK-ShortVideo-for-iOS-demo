//
//  Constants.h
//  TuSDKVideoDemo
//
//  Created by sprint on 26/04/2018.
//  Copyright © 2018 TuSDK. All rights reserved.
//

#pragma mark - 普通滤镜
// 普通滤镜code
static NSArray<NSString *> *kVideoFilterCodes = @[@"Olympus_1",@"Leica_1",@"Gold_1",@"Cheerful_1",@"White_1",@"s1950_1",@"Blurred_1",@"Newborn_1",@"Fade_1",@"NewYork_1"];

#pragma mark - 场景特效

// 场景特效code
static NSArray<NSString *> *kVideoEffectCodes = @[@"LiveShake01",@"LiveMegrim01",@"EdgeMagic01",@"LiveFancy01_1",@"LiveSoulOut01",@"LiveSignal01"];
// 场景特效颜色
static NSArray<UIColor *> *kVideoEffectColors = @[lsqRGBA(250, 118, 82, 0.7), lsqRGBA(244, 161, 26, 0.7), lsqRGBA(255, 253, 80, 0.7),lsqRGBA(91, 242, 84, 0.7), lsqRGBA(22, 206, 252, 0.7), lsqRGBA(110, 160, 242, 0.7)];


#pragma mark - 粒子特效/魔法特效

// 粒子特效code
static NSArray<NSString *> *kVideoParticleCodes =  @[@"snow01", @"Love", @"Bubbles", @"Music", @"Star", @"Surprise", @"Flower", @"Magic", @"Money", @"Burning", @"Fireball"];
// 粒子特效颜色
static NSArray<UIColor *> *kVideoPaticleColors = @[lsqRGBA(255, 255, 255, 0.7), lsqRGBA(254, 15, 15, 0.7), lsqRGBA(170, 170, 170, 0.7), lsqRGBA(54, 101, 255, 0.7),
                                       lsqRGBA(95, 250, 197, 0.7), lsqRGBA(148, 123, 255, 0.7), lsqRGBA(255, 155, 190, 0.7), lsqRGBA(100, 253, 253, 0.7),
                                       lsqRGBA(252, 231, 123, 0.7), lsqRGBA(255, 145, 91, 0.7), lsqRGBA(255, 203, 91, 0.7)];