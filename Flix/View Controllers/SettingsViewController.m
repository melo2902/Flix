//
//  SettingsViewController.m
//  Flix
//
//  Created by mwen on 6/24/21.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)includeAMSwitch:(id)sender {
    UISwitch *includeAM = (UISwitch *) sender;
    NSLog(@"%@", includeAM.on ? @"On" : @"Off");
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
