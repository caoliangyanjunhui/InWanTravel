//
//  CouponData.m
//  InWanTravel
//
//  Created by Gavin on 14-5-13.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "CouponData.h"



@implementation CouponData{
}

- (id)init
{
    self = [super init];
    if (self) {
        _couponHorizon = [[NSArray alloc]initWithObjects:
                         @"02-27721912_LK", @"04-23752465_LK", @"MS14001_LK", @"MS14003LK", @"MS14004_LK", @"MS14007_LK", @"MS14010_LK", @"MS14016_LK", @"MS14017_LK", @"MS14022_LK", @"MS14024_LK", @"MS14027_LK", @"MS14028_LK", @"MS14029_LK", @"MS14034_LK", @"MS14035_LK", @"MS14037_LK", @"MS14038_LK", @"MS14040_LK", @"MS14044_LK", @"MS14050_LK", @"MS14056_LK", @"MS14057_LK", @"MS14063_LK", @"MS14066_LK", @"MS14072_LK", nil];
        
        _couponVertical = [[NSArray alloc]initWithObjects:
                          @"LKM1401", @"LKM1402", @"LKM1405", @"LKM1406", @"LKM1407", @"LKM1307", @"LKM1308", @"LKM1310", @"LKM1314", @"LKM1315", @"LKM1316", @"LKM1319", @"LKM1320", @"LKM1322", @"LKM1323", @"LKM1324", @"LKM1325", @"LKM1331", @"LKM1336", @"LKM1338", @"LKM1340", @"LKM1411", @"LKM1412", @"LKM1418", nil];
    }
    return self;
}



@end
