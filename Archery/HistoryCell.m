//
//  HistoryCell.m
//  Archery
//
//  Created by BedWolf2000 on 10.08.14.
//  Copyright (c) 2014 BedWolf. All rights reserved.
//

#import "HistoryCell.h"

@implementation HistoryCell {
    UILabel *_nameValue;
    UILabel *_scoreValue;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        CGRect nameLabelRectangle = CGRectMake(0, 5, 70, 15);
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:nameLabelRectangle];
        nameLabel.textAlignment = NSTextAlignmentRight;
        nameLabel.text = @"Nom:";
        nameLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:nameLabel];
        
        
        CGRect scoreLabelRectangle = CGRectMake(0, 26, 70, 15);
        UILabel *scoreLabel = [[UILabel alloc] initWithFrame:scoreLabelRectangle];
        scoreLabel.textAlignment = NSTextAlignmentRight;
        scoreLabel.text = @"Score:";
        scoreLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:scoreLabel];
        
        CGRect nameValueRectangle = CGRectMake(80, 5, 200, 15);
        _nameValue = [[UILabel alloc] initWithFrame:nameValueRectangle];
        [self.contentView addSubview:_nameValue];
        
        CGRect scoreValueRectangle = CGRectMake(80, 25, 200, 15);
        _scoreValue = [[UILabel alloc] initWithFrame:scoreValueRectangle];
        [self.contentView addSubview:_scoreValue];
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

- (void)setScore:(NSString *)s {
    if (![s isEqualToString:_score]) {
        _score = [s copy];
        _scoreValue.text = _score;
    }
}

@end
