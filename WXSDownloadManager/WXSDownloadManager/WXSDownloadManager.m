//
//  WXSDownloadManager.m
//  WXSDownloadManager
//
//  Created by AlanWang on 17/2/21.
//  Copyright © 2017年 AlanWang. All rights reserved.
//

#import "WXSDownloadManager.h"

@interface WXSDownloadManager ()<NSURLSessionDownloadDelegate>

@property (strong, nonatomic) NSURLSession                      *session; //
@property (nonatomic, strong) NSURLSessionConfiguration         *sessionConfiguration; //
@property (nonatomic, strong) NSOperationQueue                  *operationQueue;


@end

@implementation WXSDownloadManager

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}
#pragma mark - Getter
- (NSURLSession *)session {
    if (!_session) {
        _session = [NSURLSession sessionWithConfiguration:self.sessionConfiguration delegate:self delegateQueue:self.operationQueue];
    }
    return _session;
}
- (NSURLSessionConfiguration *)sessionConfiguration {
    if (!_sessionConfiguration) {
        _sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    }
    return _sessionConfiguration;
}
- (NSOperationQueue *)operationQueue {
    if (!_operationQueue) {
        _operationQueue = [[NSOperationQueue alloc] init];
    }
    return _operationQueue;
}
@end
