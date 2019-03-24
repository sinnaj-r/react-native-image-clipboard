
#import "RNReactNativeImageClipboard.h"
#import <UIKit/UIPasteboard.h>
#import <UIKit/UIImage.h>

@implementation RNReactNativeImageClipboard

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addBase64Image:(NSString *)base64Image) {
  UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
  [pasteboard setPersistent:YES];
  
  NSData *imageData = [[NSData alloc]initWithBase64EncodedString:base64Image options:NSDataBase64DecodingIgnoreUnknownCharacters];

  [pasteboard setImage:[UIImage imageWithData:imageData]];
}

RCT_EXPORT_METHOD(getBase64Image: (RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    if([pasteboard hasImages] == false){
        resolve(NULL);
        return;
    }
    
    UIImage *image = [pasteboard image];
    NSData *imageData = UIImageJPEGRepresentation(image, 1.0);
    NSString *encodedString = [imageData base64EncodedStringWithOptions:0];
    resolve(encodedString);
}


@end
  
