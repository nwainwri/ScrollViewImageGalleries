//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Nathan Wainwright on 2018-08-13.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewDetailController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *imageScrollViewArea;




@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageScrollViewArea.delegate = self;
    
    
    //setup tap gesture

    
    
    // CRREATE THREE UI VIEWS

    UIImageView *firstImage = [[UIImageView alloc]  initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    firstImage.translatesAutoresizingMaskIntoConstraints = NO;
    firstImage.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *firstTapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewTapped:)];
    [firstImage addGestureRecognizer:firstTapped];
    
    [self.imageScrollViewArea addSubview:firstImage];
    

    
    //  HEIGHT
    [NSLayoutConstraint constraintWithItem:firstImage
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:self.view.frame.size.height].active = YES;
    
    //    WIDTH
    [NSLayoutConstraint constraintWithItem:firstImage
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:self.view.frame.size.width].active = YES;
    
    //    LEFT EDGE
    [NSLayoutConstraint constraintWithItem:firstImage
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1
                                  constant:0].active = YES;
    
    //    TOP EDGE
    [NSLayoutConstraint constraintWithItem:firstImage
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:0].active = YES;
    
    UIImageView *secondImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    secondImage.translatesAutoresizingMaskIntoConstraints = NO;
    secondImage.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *secondTapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewTapped:)];
    [secondImage addGestureRecognizer:secondTapped];
    
    [self.imageScrollViewArea addSubview:secondImage];
    
   // [secondImage addGestureRecognizer:tappedGesture];
    
    //  HEIGHT
    [NSLayoutConstraint constraintWithItem:secondImage
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:self.view.frame.size.height].active = YES;
    
    //    WIDTH
    [NSLayoutConstraint constraintWithItem:secondImage
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:self.view.frame.size.width].active = YES;
    
    //    LEFT EDGE
    [NSLayoutConstraint constraintWithItem:secondImage
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:firstImage
                                 attribute:NSLayoutAttributeRight
                                multiplier:1
                                  constant:0].active = YES;
    
    //    TOP EDGE
    [NSLayoutConstraint constraintWithItem:secondImage
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:0].active = YES;
    
    UIImageView *thirdImage = [[UIImageView alloc]  initWithImage:[UIImage imageNamed:@"Lighthouse"]];
    thirdImage.translatesAutoresizingMaskIntoConstraints = NO;
    thirdImage.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *thirdTapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewTapped:)];
    [thirdImage addGestureRecognizer:thirdTapped];
    
    [self.imageScrollViewArea addSubview:thirdImage];
    
   // [thirdImage addGestureRecognizer:tappedGesture];
    
    //  HEIGHT
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:self.view.frame.size.height].active = YES;
    
    //    WIDTH
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:self.view.frame.size.width].active = YES;
    
    //    LEFT EDGE
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:secondImage
                                 attribute:NSLayoutAttributeRight
                                multiplier:1
                                  constant:0].active = YES;
    
    //    RIGHT EDGE
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeRight
                                multiplier:1
                                  constant:0].active = YES;
    
    //    TOP EDGE
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:0].active = YES;
    
//    n your view controller's -viewDidLoad method, create three UIImageView and place them inside the UIScrollView next to each other. Now would be a good time to consider your layout strategy: are you going to use explicit constraints, or set the frame and rely on translatesAutoresizingMaskIntoConstraints?
    // Do any additional setup after loading the view, typically from a nib.
}




-(void)imageViewTapped:(UIGestureRecognizer *)recognizer {
    
    [self performSegueWithIdentifier:@"sugueToImageDetail" sender:recognizer.view];
}


 #pragma mark - Navigation

 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIImageView *)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
     
     
     // Make sure your segue name in storyboard is the same as this line
     if ([[segue identifier] isEqualToString:@"sugueToImageDetail"])
     {
         // Get reference to the destination view controller
         ImageViewDetailController *ImageViewer = [segue destinationViewController];
         // Pass any objects to the view controller here, like...
         [ImageViewer setMyObjectHere:sender.image];
     }
 }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
