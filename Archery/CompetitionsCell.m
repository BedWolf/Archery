//
//  CompetitionsCell.m
//  Archery
//
//  Created by BedWolf2000 on 10.08.14.
//  Copyright (c) 2014 BedWolf. All rights reserved.
//

#import "CompetitionsCell.h"

@implementation CompetitionsCell {
    UILabel *_nameValue;
    UILabel *_dateValue;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
        if (self) {
        // Initialization code
            CGRect nameLabelRectangle = CGRectMake(0, 5, 70, 15);
            UILabel *nameLabel = [[UILabel alloc] initWithFrame:nameLabelRectangle];
            nameLabel.textAlignment = NSTextAlignmentRight;
            nameLabel.text = @"Name:";
            nameLabel.font = [UIFont boldSystemFontOfSize:12];
            [self.contentView addSubview:nameLabel];
            
            
            CGRect dateLabelRectangle = CGRectMake(0, 26, 70, 15);
            UILabel *dateLabel = [[UILabel alloc] initWithFrame:dateLabelRectangle];
            dateLabel.textAlignment = NSTextAlignmentRight;
            dateLabel.text = @"Date:";
            dateLabel.font = [UIFont boldSystemFontOfSize:12];
            [self.contentView addSubview:dateLabel];
            
            CGRect nameValueRectangle = CGRectMake(80, 5, 200, 15);
            _nameValue = [[UILabel alloc] initWithFrame:nameValueRectangle];
            [self.contentView addSubview:_nameValue];
            
            CGRect weightValueRectangle = CGRectMake(80, 25, 200, 15);
            _dateValue = [[UILabel alloc] initWithFrame:weightValueRectangle];
            [self.contentView addSubview:_dateValue];
        }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)setName:(NSString *)n {
    if (![n isEqualToString:_name]) {
        _name = [n copy];
        _nameValue.text = _name;
    }
}

- (void)setWeight:(NSString *)w {
    if (![w isEqualToString:_date]) {
        _date = [w copy];
        _dateValue.text = _date;
    }
}


@end
