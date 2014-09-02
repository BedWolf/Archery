//
//  ViewControllerHistory.m
//  Archery
//
//  Created by BedWolf2000 on 10.08.14.
//  Copyright (c) 2014 BedWolf. All rights reserved.
//

#import "ViewControllerHistory.h"
#import "HistoryCell.h"

@interface ViewControllerHistory ()

@end

@implementation ViewControllerHistory

static NSString *cellIdentifier = @"CellTableIdentifier";

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
    _trains = @[
                @{@"Nom": @"01.08.14", @"Score": @"300/360"},
                @{@"Nom": @"02.08.14", @"Score": @"620/720"},
                @{@"Nom": @"03.08.14", @"Score": @"100/180"},
                @{@"Nom": @"04.08.14", @"Score": @"296/360"},
                @{@"Nom": @"05.08.14", @"Score": @"440/720"},
                @{@"Nom": @"06.08.14", @"Score": @"90/180"},
                @{@"Nom": @"07.08.14", @"Score": @"600/720"},
                ];
    UITableView *tableView = (id)[self.view viewWithTag:1];
    [tableView registerClass:[HistoryCell class] forCellReuseIdentifier:cellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.trains count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath {
    HistoryCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    NSDictionary *rowData = self.trains[indexPath.row];
    cell.name = rowData[@"Nom"];
    cell.score = rowData[@"Score"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *message = [[NSString alloc] initWithFormat:@"Malheureusement l'application n'est pas encore finie :P"];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Désolée !" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"No Problemo :D", nil];
    
    [alert show];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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

@end
