#import <Yodo1MasCore/Yodo1Mas.h>
#import "YodoMasSDK.h"
#include <asl.h>
#include <stdio.h>

@implementation YodoMasSDK

const int EVENT_OTHER_SOCIAL = 70;
NSString * const  SDKNAME = @"Yodo1MAS_SDK";
NSString * const  SDKVER = @"v4.0.5";
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);

- (void)yodo1Initialize{
  NSLog(@"yoyo: %@: Initializing...  ", SDKNAME);
  NSBundle* mainBundle = [NSBundle mainBundle];
  NSString *AppKey = [mainBundle objectForInfoDictionaryKey:@"com.yodo1mas.APP_KEY"];

  //[[Yodo1Mas sharedInstance] initWithAppId:@"Your AppId" successful:^{
    //NSLog(@"yoyo: %@: Initialized Successfully App Id: %@ SDK version: %@", SDKNAME,AppKey,SDKVER);
  //} fail:^(NSError * _Nonnull error) {
    //NSLog(@"yoyo: %@: ERROR: %@",SDKNAME,error);
  //}];
}


@end
