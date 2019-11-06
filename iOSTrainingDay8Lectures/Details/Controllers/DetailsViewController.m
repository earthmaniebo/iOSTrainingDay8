//
//  DetailsViewController.m
//  iOSTrainingDay8Lectures
//
//  Created by Earth Maniebo on 06/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailsView = (DetailsView*)[[[NSBundle mainBundle] loadNibNamed:@"DetailsView" owner:self options:nil] objectAtIndex:0];
    self.detailsView.detailsViewDelegate = self;
    [self.view addSubview:self.detailsView];
}

- (void)didTapClose {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)didTapChange {
    [self.detailsViewControllerDelegate didTapChange];
}


@end
