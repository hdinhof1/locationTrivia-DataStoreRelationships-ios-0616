//
//  FISLocationsTableViewController.h
//  locationTrivia-dataStore
//
//  Created by Henry Dinhofer on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocationsDataStore.h"

@interface FISLocationsTableViewController : UITableViewController

@property (strong, nonatomic) FISLocationsDataStore *store;

@end
