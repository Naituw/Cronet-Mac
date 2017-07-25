//
//  ViewController.m
//  JSONRequest
//
//  Created by 吴天 on 2017/7/25.
//  Copyright © 2017年 wutian. All rights reserved.
//

#import "ViewController.h"
#import <CronetNetworking/components/cronet/ios/Cronet.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Cronet start];
    [Cronet registerHttpProtocolHandler];
    
    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:@"http://api.weibo.com/2/short_url/info.json"] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"response: %@", response);
    }] resume];
    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
