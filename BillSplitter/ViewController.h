//
//  ViewController.h
//  BillSplitter
//
//  Created by David Guichon on 2017-03-18.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *totalBillAmountTextField;


@property (strong, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;

@property (strong, nonatomic) IBOutlet UILabel *numberOfPeopleLabel;


- (IBAction)calculateSplitAmount:(UIButton *)sender;

- (IBAction)calculateNumberOfPeople:(UISlider *)sender;

@property (strong, nonatomic) IBOutlet UILabel *amountToPayLabel;

@end

