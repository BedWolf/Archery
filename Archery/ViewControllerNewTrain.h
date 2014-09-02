//
//  ViewControllerNewTrain.h
//  Archery
//
//  Created by BedWolf2000 on 09.08.14.
//  Copyright (c) 2014 BedWolf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerNewTrain : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *TextFieldName;
@property (strong, nonatomic) IBOutlet UITextField *TextFieldEnds;
@property (strong, nonatomic) IBOutlet UITextField *TextFieldArrows;
@property (strong, nonatomic) IBOutlet UITextField *TextFieldDistance;
@property (strong, nonatomic) IBOutlet UITextField *TextFieldBlason;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segControlInOutdoor;

- (IBAction)textFieldDismiss:(id)sender;
// - (IBAction)buttonCreate:(id)sender;
- (IBAction)backgroundTap:(id)sender;

@property (copy, nonatomic) NSArray *textFields;

@end

