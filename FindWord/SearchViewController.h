//
//  SearchViewController.h
//  FindWord
//
//  Created by Pramod Sharma on 06/05/16.
//  Copyright © 2016 Pramod Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController
{
    __weak IBOutlet UITextField *txtWord;
}
- (IBAction)tryItBtnPressed:(id)sender;
@end
