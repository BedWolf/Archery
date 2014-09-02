//
//  ViewControllerNewTrain.m
//  Archery
//
//  Created by BedWolf2000 on 09.08.14.
//  Copyright (c) 2014 BedWolf. All rights reserved.
//

#import "ViewControllerNewTrain.h"
#import "ViewController.h"

@interface ViewControllerNewTrain ()

@end

@implementation ViewControllerNewTrain

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textFields = @[@"Ends", @"Arrows", @"Distance", @"Blason"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)returnMenu:(id)sender {
}

- (IBAction)textFieldDismiss:(id)sender {
    [_TextFieldName resignFirstResponder];
}

/* Je n'aimerai pas que ça marche si on crée un nouvel entrainement et qu'on oublie de marquer quelque chose comme le nombre de flèches.
 
 - (IBAction)buttonCreate:(id)sender {
    if (_TextFieldEnds == ) {
        NSString *message = [[NSString alloc] initWithFormat:@"OUPS ! Un champ n'est pas rempli !", nil];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hey! Vous avez oublié de remplir quelque chose !" message:message delegate:nil cancelButtonTitle:@"Message reçu" otherButtonTitles:nil, nil];
        
        [alert show];
    }
}
 */

- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:YES];
}


@end
