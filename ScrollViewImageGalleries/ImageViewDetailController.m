//
//  ImageViewDetailController.m
//  ScrollViewImageGalleries
//
//  Created by Nathan Wainwright on 2018-08-13.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ImageViewDetailController.h"

@interface ImageViewDetailController ()

@property (weak, nonatomic) IBOutlet UIScrollView *ImageDetailViewArea;

@property (weak, nonatomic) IBOutlet UIImageView *ImageDetails;



@end

@implementation ImageViewDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ImageDetailViewArea.delegate = self; // always have to set this if using delegate pattern... (also adding the <part> to the .h file
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)ImageDetailViewArea
{
    return self.ImageDetails;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
