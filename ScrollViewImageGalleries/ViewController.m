//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Nathan Wainwright on 2018-08-13.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *imageScrollViewArea;

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageScrollViewArea.delegate = self;
    
    // CRREATE THREE UI VIEWS
    
    // add them as subview to sroll view...?
    
    //  A red UIView at (20,20) x, y coordinates and with width 100 and height 100
    UIImageView *firstImage = [[UIImageView alloc] initWithFrame:CGRectZero];
    firstImage.translatesAutoresizingMaskIntoConstraints = NO;
    firstImage.backgroundColor = [UIColor orangeColor];
    [self.imageScrollViewArea addSubview:firstImage];
    
    //  HEIGHT
    [NSLayoutConstraint constraintWithItem:firstImage
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:1080].active = YES;
    
    //    WIDTH
    [NSLayoutConstraint constraintWithItem:firstImage
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:1920].active = YES;
    
    //    RIGHT EDGE
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
    
    UIImageView *secondImage = [[UIImageView alloc] initWithFrame:CGRectZero];
    secondImage.translatesAutoresizingMaskIntoConstraints = NO;
    secondImage.backgroundColor = [UIColor orangeColor];
    [self.imageScrollViewArea addSubview:secondImage];
    
    //  HEIGHT
    [NSLayoutConstraint constraintWithItem:secondImage
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:1200].active = YES;
    
    //    WIDTH
    [NSLayoutConstraint constraintWithItem:secondImage
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:1600].active = YES;
    
    //    RIGHT EDGE
    [NSLayoutConstraint constraintWithItem:secondImage
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1
                                  constant:0].active = YES;
    
    //    TOP EDGE
    [NSLayoutConstraint constraintWithItem:secondImage
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:1080].active = YES;
    
    UIImageView *thirdImage = [[UIImageView alloc] initWithFrame:CGRectZero];
    thirdImage.translatesAutoresizingMaskIntoConstraints = NO;
    thirdImage.backgroundColor = [UIColor orangeColor];
    [self.imageScrollViewArea addSubview:thirdImage];
    
    //  HEIGHT
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:900].active = YES;
    
    //    WIDTH
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:1800].active = YES;
    
    //    RIGHT EDGE
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1
                                  constant:0].active = YES;
    
    //    TOP EDGE
    [NSLayoutConstraint constraintWithItem:thirdImage
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageScrollViewArea
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:2280].active = YES;
    
//    n your view controller's -viewDidLoad method, create three UIImageView and place them inside the UIScrollView next to each other. Now would be a good time to consider your layout strategy: are you going to use explicit constraints, or set the frame and rely on translatesAutoresizingMaskIntoConstraints?
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
