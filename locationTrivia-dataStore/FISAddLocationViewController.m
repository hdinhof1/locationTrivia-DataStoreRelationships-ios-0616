//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Henry Dinhofer on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocationsDataStore.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeField;

@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (strong, nonatomic) FISLocationsDataStore *store;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameField.accessibilityLabel = @"nameField";
    self.nameField.accessibilityIdentifier = @"nameField";
    self.latitudeField.accessibilityLabel = @"latitudeField";
    self.latitudeField.accessibilityIdentifier = @"latitudeField";
    self.longitudeField.accessibilityLabel = @"longitudeField";
    self.longitudeField.accessibilityIdentifier = @"longitudeField";
    self.cancelButton.accessibilityLabel = @"cancelButton";
    self.cancelButton.accessibilityIdentifier =  @"cancelButton";
    self.saveButton.accessibilityLabel = @"saveButton";
    self.saveButton.accessibilityIdentifier = @"saveButton";
    
    
    self.store = [FISLocationsDataStore sharedLocationsDataStore];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelTapped:(id)sender {
    self.nameField.text = self.latitudeField.text = self.longitudeField.text = @"";
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)saveTapped:(id)sender {
    CGFloat latitudeFloat  = [self.latitudeField.text floatValue];
    CGFloat longitudeFloat = [self.longitudeField.text floatValue];
    
    FISLocation *newLocation = [[FISLocation alloc]
                                initWithName:self.nameField.text
                                latitude:latitudeFloat
                                longitude:longitudeFloat];
    [self.store.locations addObject:newLocation];
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
