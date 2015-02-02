//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Kittipat Virochsiri on 2/1/15.
//  Copyright (c) 2015 Kittipat Virochsiri. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipSelector;
- (IBAction)newDefault:(id)sender;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  self.defaultTipSelector.selectedSegmentIndex = [defaults integerForKey:@"default_tip_percent_index"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)newDefault:(id)sender {
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  [defaults setInteger:self.defaultTipSelector.selectedSegmentIndex forKey:@"default_tip_percent_index"];
  [defaults synchronize];
}
@end
