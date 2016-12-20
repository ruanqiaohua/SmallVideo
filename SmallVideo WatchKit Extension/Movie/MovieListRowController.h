//
//  MovieListRowController.h
//  SmallVideo
//
//  Created by 阮巧华 on 2016/12/15.
//  Copyright © 2016年 阮巧华. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface MovieListRowController : NSObject

@property (nonatomic, weak) IBOutlet WKInterfaceImage *itemImage;

@property (nonatomic, weak) IBOutlet WKInterfaceLabel *itemLabel;

@end
