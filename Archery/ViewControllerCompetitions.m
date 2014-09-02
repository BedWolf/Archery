//
//  ViewControllerCompetitions.m
//  Archery
//
//  Created by BedWolf2000 on 10.08.14.
//  Copyright (c) 2014 BedWolf. All rights reserved.
//

#import "ViewControllerCompetitions.h"

@interface ViewControllerCompetitions ()

@end

@implementation ViewControllerCompetitions

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
    _competitions = @[@"CS/SM FITA Bern 2014 (Compound, Longbow, Barebow, Bowhunter)",@"CS/SM FITA Bern 2014 (Recurve)",@"3D Parcours en forêt",@"CS/SM Field 2014",@"Tournoi SwissArchery Jeunes / Finale de la Coupe du monde",@"CS/SM Parcours 3D 2014 (Moleson)",@"DV/AD SwissArchery",@"Barebow, Longbow, Bowhunter CS arcs préhistoriques"];
/*
    UITableView *tableView = (id)[self.view viewWithTag:1];
    [tableView registerClass:[CompetitionsCell class] forCellReuseIdentifier:cellIdentifier];
    
     16 août 2014
     17 août 2014
     17 août 2014
     31 août 2014
     6 et 7 septembre 2014
     21 septembre 2014
     4 octobre 2014
     19 octobre 2014
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.competitions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath {
    NSString *SimpleIdentifier = @"SimpleIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:SimpleIdentifier];
    }
    /*
    CompetitionsCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    NSDictionary *rowData = self.competitions[indexPath.row];
    cell.name = rowData[@"Name"];
    cell.date = rowData[@"Date"];
    */
    cell.textLabel.text = self.competitions[indexPath.row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:16];
    
    
    if (indexPath.row == 0) {
        cell.detailTextLabel.text = @"16 août 2014";
    } else if (indexPath.row == 1) {
        cell.detailTextLabel.text = @"17 août 2014";
    } else if (indexPath.row == 2) {
        cell.detailTextLabel.text = @"17 août 2014";
    } else if (indexPath.row == 3) {
        cell.detailTextLabel.text = @"31 août 2014";
    } else if (indexPath.row == 4) {
        cell.detailTextLabel.text = @"6 et 7 septembre 2014";
    } else if (indexPath.row == 5) {
        cell.detailTextLabel.text = @"21 septembre 2014";
    } else if (indexPath.row == 6) {
        cell.detailTextLabel.text = @"4 octobre 2014";
    } else if (indexPath.row == 7) {
        cell.detailTextLabel.text = @"19 octobre 2014";
    }

    cell.detailTextLabel.font = [UIFont systemFontOfSize:15];
    return cell;
}
/*
- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row < 12) {
        return 0;
    } else {
        return 2;
    }
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSString *rowValue = self.competitions[indexPath.row];
    if (indexPath.row == 0) {
        NSString *message = [[NSString alloc] initWithFormat:@"CS/SM FITA Bern 2014 (Compound, Longbow, Barebow, Bowhunter) LIEU : Bern, Leichtathletik-Stadion Wankdorf ARBITRES : Peppicelli, Osty, Bauer, Joseph "];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"16 août 2014" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"Woow !", nil];
        
        [alert show];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    } else if (indexPath.row == 1) {
        NSString *message = [[NSString alloc] initWithFormat:@"CS/SM FITA Bern 2014 (Recurve) LIEU : Bern, Leichtathletik-Stadion Wankdorf ARBITRES : Peppicelli, Osty, Bauer, Joseph"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"17 août 2014" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"Woow !", nil];
        
        [alert show];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    } else if (indexPath.row == 2) {
        NSString *message = [[NSString alloc] initWithFormat:@"3D Parcours en forêt LIEU : Montfaucon ARBITRES : Perren, Paroz"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"17 août 2014" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"Woow !", nil];
        
        [alert show];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    } else if (indexPath.row == 3) {
        NSString *message = [[NSString alloc] initWithFormat:@"CS/SM Field 2014 LIEU : Les Agettes  ARBITRES : Perren, Maillard, Poggia, Joseph"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"31 août 2014" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"Woow !", nil];
        
        [alert show];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    } else if (indexPath.row == 4) {
        NSString *message = [[NSString alloc] initWithFormat:@"Tournoi SwissArchery Jeunes / Finale de la Coupe du monde LIEU : Lausanne"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"6 et 7 septembre 2014" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"Woow !", nil];
        
        [alert show];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    } else if (indexPath.row == 5) {
        NSString *message = [[NSString alloc] initWithFormat:@"CS/SM Parcours 3D 2014 (Moleson) LIEU : Moléson-Village ARBITRES : Paroz, Perren, Osty, Peppicelli"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"21 septembre 2014" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"Woow !", nil];
        
        [alert show];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    } else if (indexPath.row == 6) {
        NSString *message = [[NSString alloc] initWithFormat:@"DV/AD SwissArchery LIEU : Ittigen"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"4 octobre 2014" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"Woow !", nil];
        
        [alert show];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    } else if (indexPath.row == 7) {
        NSString *message = [[NSString alloc] initWithFormat:@"Barebow, Longbow, Bowhunter CS arcs préhistoriques LIEU : Le Fuet ARBITRES : sans arbitres"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"19 octobre 2014" message:message delegate:nil cancelButtonTitle:@"NUL !" otherButtonTitles:@"Woow !", nil];
        
        [alert show];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
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
