//
//  DetailsView.h
//  iOSTrainingDay8Lectures
//
//  Created by Earth Maniebo on 06/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetailsViewDelegate <NSObject>
@optional
- (void)didTapClose;
- (void)didTapChange;
@end

NS_ASSUME_NONNULL_BEGIN

@interface DetailsView : UIView

@property (strong) id<DetailsViewDelegate> detailsViewDelegate;

@end

NS_ASSUME_NONNULL_END
