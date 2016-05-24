//
//  ViewController.h
//  Palindrome
//
//  Created by tstone10 on 5/24/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

/*
 Create a simple iOS app to determine whether or not a given word is a palindrome
 The app should allow the user to input a word of their choice
 The app should determine whether the word is a palindrome
 The app should ignore spaces, capitalization, and punctuation
 The app should display a message to the user with the result
 The app should include appropriate error handling
*/

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIButton *btnEval;
    IBOutlet UITextField *inputPhrase;
    IBOutlet UILabel *txtResult;
}

-(IBAction) evalButtonPressed;

@end

