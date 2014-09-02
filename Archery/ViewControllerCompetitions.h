//
//  ViewControllerCompetitions.h
//  Archery
//
//  Created by BedWolf2000 on 10.08.14.
//  Copyright (c) 2014 BedWolf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerCompetitions : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) NSArray *competitions;

@end
