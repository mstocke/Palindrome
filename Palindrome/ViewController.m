//
//  ViewController.m
//  Palindrome
//
//  Created by tstone10 on 5/24/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnEval;
@property (weak, nonatomic) IBOutlet UITextField *inputPhrase;
@property (weak, nonatomic) IBOutlet UILabel *txtResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _txtResult.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)evalButtonPressed {
    NSLog(@"Button working");
    BOOL isPalindrome = [self checkForPalindrome:_inputPhrase.text];
    NSLog(@"%d", isPalindrome);
    
    _txtResult.text = _inputPhrase.text;
    _txtResult.hidden = NO;
}

- (BOOL)checkForPalindrome:(NSString *)string {
    NSString *reverse = [self stringByReversingString:string];
    
    NSLog(@"%@", reverse);
    
    BOOL stringIsEqualToReverse = [string isEqualToString:reverse];
    return stringIsEqualToReverse;
}

- (NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        /*
         NSString *temp = [NSString stringWithCharacters:&c length:1];
         if ([temp isEqualToString:@" "]) {
            temp = @"";
        }
        result = [result stringByAppendingFormat:@"%@", temp];
         */
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}

@end
