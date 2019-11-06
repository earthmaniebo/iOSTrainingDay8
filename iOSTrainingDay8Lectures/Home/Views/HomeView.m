//
//  HomeView.m
//  iOSTrainingDay8Lectures
//
//  Created by Earth Maniebo on 06/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView

- (IBAction)didTapButton:(id)sender {
    
    if (self.homeViewDelegate && [self.homeViewDelegate respondsToSelector:@selector(didTapButton)]) {
        [self.homeViewDelegate didTapButton];
    }
}


@end
