//
//  RNCubiCasaView.m
//
//  Created by Filipe on 10/21/21.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
 
@interface RCT_EXTERN_MODULE(RNCubiCasaViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(status, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onClick, RCTBubblingEventBlock)
 
@end
