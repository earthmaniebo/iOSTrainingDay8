//
//  DetailsViewController.h
//  iOSTrainingDay8Lectures
//
//  Created by Earth Maniebo on 06/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Views/DetailsView.h"

@protocol DetailsViewControllerDelegate <NSObject>
@required
- (void)didTapChange;
@end

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController<DetailsViewDelegate>

@property (strong, nonatomic) DetailsView *detailsView;
@property (strong) id<DetailsViewControllerDelegate> detailsViewControllerDelegate;

@end

NS_ASSUME_NONNULL_END
