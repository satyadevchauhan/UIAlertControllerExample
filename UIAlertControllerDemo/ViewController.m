//
//  ViewController.m
//  UIAlertControllerDemo
//
//  Created by Satyadev on 15/05/17.
//  Copyright © 2017 Satyadev Chauhan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionSheetButtonPressed:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"My Action Sheet"
                                                                   message:@"This is an action sheet."
                                                            preferredStyle:UIAlertControllerStyleActionSheet]; // Action Sheet
    
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"one"
                                                          style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction * action) {
                                                              NSLog(@"You pressed button one");
                                                          }]; // Button 1
    
    UIAlertAction *secondAction = [UIAlertAction actionWithTitle:@"two"
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                               NSLog(@"You pressed button two");
                                                           }]; // Button 2
    
    UIAlertAction *thirdAction = [UIAlertAction actionWithTitle:@"three"
                                                           style:UIAlertActionStyleDestructive
                                                        handler:^(UIAlertAction * action) {
                                                               NSLog(@"You pressed button three");
                                                           }]; // Button 3
    
    UIAlertAction *fourthAction = [UIAlertAction actionWithTitle:@"four"
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * action) {
                                                               NSLog(@"You pressed button four");
                                                           }]; // Button 4
    
    [alert addAction:firstAction];  // Add Button 1
    [alert addAction:secondAction]; // Add Button 2
    [alert addAction:thirdAction];  // Add Button 3
    [alert addAction:fourthAction]; // Add Button 4
    
    [self presentViewController:alert animated:YES completion:nil]; // show the Action Sheet
}

- (IBAction)alertButtonPressed:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"My Alert"
                                                                   message:@"This is an alert."
                                                            preferredStyle:UIAlertControllerStyleAlert]; // Alert
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              NSLog(@"You pressed button OK");
                                                              NSLog(@"Current password: %@", [[alert textFields][0] text]);
                                                          }]; // Button OK
    
    [alert addAction:defaultAction]; // Add Button OK
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Password...";
        textField.secureTextEntry = YES;
    }]; // Add Text Field
    
    [self presentViewController:alert animated:YES completion:nil]; // Show the Alert
}

@end
