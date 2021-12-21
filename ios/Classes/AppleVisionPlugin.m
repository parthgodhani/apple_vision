#import "AppleVisionPlugin.h"
#if __has_include(<apple_vision/apple_vision-Swift.h>)
#import <apple_vision/apple_vision-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "apple_vision-Swift.h"
#endif

@implementation AppleVisionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAppleVisionPlugin registerWithRegistrar:registrar];
}
@end
