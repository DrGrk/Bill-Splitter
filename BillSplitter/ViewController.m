//
//  ViewController.m
//  BillSplitter
//
//  Created by David Guichon on 2017-03-18.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSNumberFormatter *numberFormatter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CREATE AN INSTANCE OF FORMATTER
    self.numberFormatter = [[NSNumberFormatter alloc] init];
    self.numberFormatter.minimumFractionDigits = 2;
    self.numberFormatter.generatesDecimalNumbers = YES;
    self.numberOfPeopleLabel.text = @"";
    self.amountToPayLabel.text = @"";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
// Dispose of any resources that can be recreated.
}


- (IBAction)calculateSplitAmount:(UIButton *)sender {
    
    //BRING IN AMOUNT OF PEOPLE
    int amountOfPeopleInt = (int) self.numberOfPeopleSlider.value;
    NSDecimalNumber *amountOfPeopleNSD = [[NSDecimalNumber alloc] initWithInt:amountOfPeopleInt];
    
    //BRING IN TOTAL BILL AMOUNT AND CONVERT TO NSDECIMAL NUMBER
    NSDecimalNumber *billAmountNSD = [[NSDecimalNumber alloc] initWithFloat:[self.totalBillAmountTextField.text floatValue]];
    
    NSDecimalNumber *perPersonBillAmountNSD = [billAmountNSD decimalNumberByDividingBy:amountOfPeopleNSD];
    NSString *perPersonBillAmountString = [[NSString alloc] init];
    perPersonBillAmountString = [self.numberFormatter stringFromNumber:perPersonBillAmountNSD];
    self.amountToPayLabel.text = [NSString stringWithFormat:@"$%@", perPersonBillAmountString];
    
}

- (IBAction)calculateNumberOfPeople:(UISlider *)sender {
    //BRING IN AMOUNT OF PEOPLE AS NSD SET IT TO String
    int amountOfPeopleInt = (int) self.numberOfPeopleSlider.value;
    self.numberOfPeopleLabel.text = [NSString stringWithFormat:@"%i",amountOfPeopleInt];
}


@end
