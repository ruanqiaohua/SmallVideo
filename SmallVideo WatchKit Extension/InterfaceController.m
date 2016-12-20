//
//  InterfaceController.m
//  SmallVideo WatchKit Extension
//
//  Created by 阮巧华 on 2016/12/14.
//  Copyright © 2016年 阮巧华. All rights reserved.
//

#import "InterfaceController.h"
#import "MovieListRowController.h"
#import "MovieListModel.h"
#import "MovieInterfaceController.h"

@interface InterfaceController()
@property (nonatomic, weak) IBOutlet WKInterfaceTable *tableView;
@property (nonatomic, copy) NSArray *items;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self loadTodoItems];
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

/** 数据加载 */
- (void)loadTodoItems {
    
    _items = [self backItems];
    
    [_tableView setNumberOfRows:_items.count withRowType:@"MovieListRowController"];
    NSInteger rowCount = _tableView.numberOfRows;
    
    for (NSInteger i = 0; i < rowCount; i++) {
        // Set the values for the row controller
        MovieListRowController* row = [_tableView rowControllerAtIndex:i];
        MovieListModel *model = _items[i];
        [row.itemImage setImageNamed:model.image];
        [row.itemLabel setText:model.title];
    }

}

- (NSArray *)backItems {
    
    NSMutableArray *mArr = [NSMutableArray array];
    for (int i=0; i<6; i++) {
        MovieListModel *model = [MovieListModel new];
        model.image = @"poster";
        model.title = @"兔子";
        [mArr addObject:model];
    }
    return mArr;
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    
    MovieListModel *selectModel = _items[rowIndex];
    [self pushControllerWithName:@"MovieInterfaceController" context:selectModel];
}

@end



