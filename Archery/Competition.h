//
//  Competition.h
//  Archery
//
//  Created by ippon on 02/09/14.
//  Copyright (c) 2014 BedWolf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Competition : NSObject

@property (nonatomic, copy) NSString *nom;
@property (nonatomic, copy) NSDate *date;
@property (nonatomic, copy) NSDate *lieu;
@property (nonatomic, copy) NSMutableArray *arbitres;
@property (nonatomic, copy) NSString *nbVolee;
@property (nonatomic, copy) NSString *nbFlechesParVolee;
@property (nonatomic, copy) NSString *distance;
@property (nonatomic, copy) NSString *tailleBlason;
@property (nonatomic, copy) NSString *typeArc;
@property (nonatomic, copy) NSMutableArray *volees;

@end
