//
//  SearchViewController.m
//  FindWord
//
//  Created by Pramod Sharma on 06/05/16.
//  Copyright © 2016 Pramod Sharma. All rights reserved.
//

#import "SearchViewController.h"

#define ARR_SEARCH_CRETIRIA @[@"end", @"back", @"and", @"the", @"po", @"pu", @"lar", @"face"]

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*!
 *  @author Pramod Sharma, 16-05-06 13:05:22
 *
 *  @brief This Method will used to check your enter data is true or not.
 *
 *  @param sender <#sender description#>
 *
 *  @since <#1.0#>
 */

- (IBAction)tryItBtnPressed:(id)sender {
    NSString *returnedStr  = [self checkUserEnteredStringMatched:txtWord.text];
    BOOL strMatched = (returnedStr.length > 0) ? NO : YES;
    [self showAlertMessage:strMatched];
}

- (NSString *)checkUserEnteredStringMatched:(NSString *)enteredString {
    for (int i = 0; i < [ARR_SEARCH_CRETIRIA count]; i++) {
        enteredString = [enteredString stringByReplacingOccurrencesOfString:[ARR_SEARCH_CRETIRIA objectAtIndex:i] withString:@""];
        // if search string is @"" then stop loop
        if ([enteredString isEqualToString:@""]) {
            break;
        }
    }
    return enteredString;
}

- (void)showAlertMessage:(BOOL)status {
    NSString *msgStr = status ? @"Word Matched!" : @"Sorry ! Try again to Match your word.";
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:nil
                                  message:msgStr
                                  preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             //Do some thing here
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
