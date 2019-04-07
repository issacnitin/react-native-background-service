//
//  LocationServiceBridge.m
//  RNReactNativeBackgroundService
//
//  Created by Nitin Issac Joy on 07/04/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(LocationService, NSObject)

RCT_EXTERN_METHOD(requestPermission)

@end
