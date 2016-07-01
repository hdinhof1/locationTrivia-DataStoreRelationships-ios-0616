//
//  FISAddTriviaTableViewController.m
//  locationTrivia-dataStore
//
//  Created by Henry Dinhofer on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaTableViewController.h"
#import "FISTrivium.h"

@interface FISAddTriviaTableViewController ()
@property (weak, nonatomic) IBOutlet UITextField *triviumText;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;


@end

@implementation FISAddTriviaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.triviumText.accessibilityIdentifier = self.triviumText.accessibilityLabel = @"Trivium TextField";
    self.cancelButton.accessibilityLabel = self.cancelButton.accessibilityIdentifier = @"Cancel Button";
    self.saveButton.accessibilityLabel = self.saveButton.accessibilityIdentifier = @"Save Button";
    
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelTapped:(id)sender {
    self.triviumText.text = @"";
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (IBAction)saveTapped:(id)sender {
    FISTrivium *newTrivia = [[FISTrivium alloc] initWithContent:self.triviumText.text likes:0];
    [self.location.trivia addObject: newTrivia];
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
