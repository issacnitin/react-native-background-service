
#import "ReactNativeBackgroundService.h"
//
//@implementation ReactNativeBackgroundService
//
//- (dispatch_queue_t)methodQueue
//{
//    return dispatch_get_main_queue();
//}
//
//@end

@interface RCT_EXTERN_REMAP_MODULE(LocationService, LocationService, RCTEventEmitter);

RCT_EXTERN_METHOD(requestPermission);
RCT_EXTERN_METHOD(startLocationTracking);

@end
