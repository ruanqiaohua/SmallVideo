//
//  MovieInterfaceController.m
//  SmallVideo
//
//  Created by 阮巧华 on 2016/12/15.
//  Copyright © 2016年 阮巧华. All rights reserved.
//

#import "MovieInterfaceController.h"

@interface MovieInterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceMovie *movie;
@end

@implementation MovieInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"mov_bbb" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:path];
    [self.movie setMovieURL:url];
    [self.movie setVideoGravity:WKVideoGravityResizeAspect];
    WKImage *poster = [WKImage imageWithImageName:@"poster"];
    [self.movie setPosterImage:poster];
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end
