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


- (IBAction)onIncludeAMChange:(id)sender {
}

- (IBAction)onMovieOrderChange:(id)sender {
    UISwitch *orderSwitch = (UISwitch *)sender;
  
    BOOL boolValue = [orderSwitch isOn];
    NSLog(boolValue ? @"Yes" : @"No");
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:[orderSwitch isOn] forKey:@"orderFromLatest"];
    [defaults synchronize];
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
