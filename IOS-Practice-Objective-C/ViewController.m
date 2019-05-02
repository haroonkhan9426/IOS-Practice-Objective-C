//
//  ViewController.m
//  IOS-Practice-Objective-C
//
//  Created by APPLE on 02/05/2019.
//  Copyright © 2019 TripMate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSString *userName;
@property NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordTextField;
@property (weak, nonatomic) IBOutlet UILabel *errorMessageLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userName = @"haroonkhan";
    self.password = @"password";
    
}

- (IBAction)loginButtonPressed:(id)sender {
    if ([self.userName isEqualToString: self.userNameTextField.text] &&
        [self.password isEqualToString:self.userPasswordTextField.text])
    {
        self.errorMessageLabel.text = @"Login Successfully";
    }else{
        self.errorMessageLabel.text = @"Login Failed";
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}



@end
