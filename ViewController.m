//
//  ViewController.m
//  ImagePickersample
//
//  Created by Rajarajeswaran Shanmugam on 2/11/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePhotoaction:(id)sender {
    
    
  if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
{
    
    UIImagePickerController *imagepicker = [[UIImagePickerController alloc]init];
    imagepicker.delegate = self;
    imagepicker.allowsEditing = YES;
    imagepicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:imagepicker animated:YES completion:NULL];
}
    else
    {
         UIAlertController *myalert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Device has No Camera" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [myalert dismissViewControllerAnimated:YES completion:nil];
            }];
            
            [myalert addAction:ok];
            [self presentViewController:myalert animated:YES completion:nil];
    }
    
}

- (IBAction)selectphotoaction:(id)sender {
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
    {
    UIImagePickerController *imagepicker = [[UIImagePickerController alloc]init];
    
    imagepicker.delegate = self;
    imagepicker.allowsEditing = YES;
    imagepicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:imagepicker animated:YES completion:NULL];
    }
    
    else
    {
        
            UIAlertController *myalert = [UIAlertController alertControllerWithTitle:@"Error in Picking Photo" message:@"Device has No Camera" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [myalert dismissViewControllerAnimated:YES completion:nil];
            }];
            
            [myalert addAction:ok];
            [self presentViewController:myalert animated:YES completion:nil];
        }

    
}


-(void)imagePickerController:(UIImagePickerController *)imagepicker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    
    UIImage *selectedImage = info[UIImagePickerControllerEditedImage];
    self.imageview.image = selectedImage;
    
    [imagepicker dismissViewControllerAnimated:YES completion:NULL];
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
