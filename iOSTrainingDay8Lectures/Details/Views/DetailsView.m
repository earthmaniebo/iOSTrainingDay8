//
//  DetailsView.m
//  iOSTrainingDay8Lectures
//
//  Created by Earth Maniebo on 06/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "DetailsView.h"

@implementation DetailsView

- (IBAction)didTapClose:(id)sender {
    if (self.detailsViewDelegate && [self.detailsViewDelegate respondsToSelector:@selector(didTapClose)]) {
        [self.detailsViewDelegate didTapClose];
    }
}

- (IBAction)didTapChange:(id)sender {
    if (self.detailsViewDelegate && [self.detailsViewDelegate respondsToSelector:@selector(didTapChange)]) {
        [self.detailsViewDelegate didTapChange];
    }
}

@end
