//
//  ViewController.m
//  Imaginarium
//
//  Created by Igor on 3/19/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:
                        [NSString stringWithFormat:@"http://images.apple.com/v/iphone-6/a/images/display/landscape-gallery/landscape_%@_large.jpg", segue.identifier]];
        ivc.title = segue.identifier;
    }
}

@end
