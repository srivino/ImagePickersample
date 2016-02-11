//
//  ViewController.h
//  ImagePickersample
//
//  Created by Rajarajeswaran Shanmugam on 2/11/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageview;


- (IBAction)takePhotoaction:(id)sender;

- (IBAction)selectphotoaction:(id)sender;
@end

