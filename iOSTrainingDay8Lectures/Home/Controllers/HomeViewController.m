//
//  HomeViewController.m
//  iOSTrainingDay8Lectures
//
//  Created by Earth Maniebo on 06/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "HomeViewController.h"
#import "../../Details/Controllers/DetailsViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.homeView = (HomeView*)[[[NSBundle mainBundle] loadNibNamed:@"HomeView" owner:self options:nil] objectAtIndex:0];
    self.homeView.nameLabel.text = @"Earth Maniebo";
    self.homeView.profilePicImageView.image = [UIImage imageNamed:@"ic_question"];
//    self.homeView.historyTableView.delegate = self;
//    self.homeView.historyTableView.dataSource = self;
    self.homeView.homeViewDelegate = self;
    
    [self.view addSubview:self.homeView];
    
}

- (void)didTapButton {
    [self performSegueWithIdentifier:@"nextSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"nextSegue"]) {
        DetailsViewController *vc = [segue destinationViewController];
        vc.detailsViewControllerDelegate = self;
    }
}


- (void)didTapChange {
    self.homeView.nameLabel.text = @"Woah. I changed!";
}


@end
