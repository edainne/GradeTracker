//
//  GTSubjectViewController.m
//  GradeTracker
//
//  Created by Edainne Ladys S. Silva on 12/31/13.
//  Copyright (c) 2013 Edainne Ladys S. Silva. All rights reserved.
//

#import "GTSubjectViewController.h"

@interface GTSubjectViewController ()

@end

@implementation GTSubjectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    subjectList = [[NSMutableArray alloc] initWithObjects:@"Science", @"Math", @"English", @"Social Science", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) clickedAddSubject:(id)sender
{
    actionSheet = [[UIActionSheet alloc] initWithTitle:@"Subject"
                                              delegate:nil
                                     cancelButtonTitle:nil
                                destructiveButtonTitle:nil
                                     otherButtonTitles:nil];
    
    [actionSheet setActionSheetStyle:UIActionSheetStyleBlackTranslucent];
    
    CGRect pickerFrame = CGRectMake(0, 40, 0, 0);
    
    pickerView = [[UIPickerView alloc] initWithFrame:pickerFrame];
    pickerView.showsSelectionIndicator = YES;
    pickerView.dataSource = self;
    pickerView.delegate = self;
    
    //**CLOSEBUTTON
    
    UISegmentedControl *closeButton = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObject:@"Done"]];
    closeButton.momentary = YES;
    closeButton.frame = CGRectMake(260, 7.0f, 50.0f, 30.0f);
    closeButton.segmentedControlStyle = UISegmentedControlStyleBar;
    closeButton.tintColor = [UIColor blackColor];
    [closeButton addTarget:self action:@selector(dismissActionSheet:) forControlEvents:UIControlEventValueChanged];
    
    arrayIndex = [subjectList objectAtIndex:0];
    
    [actionSheet addSubview:pickerView];
//    [pickerView release];
    
    //release closebutton
//    [actionSheet addSubview:closeButton];
//    [closeButton release];
    
    
    //set actionsheetounds
    [actionSheet showInView:self.view];
    [actionSheet setBounds:CGRectMake(0, 0, 320, 485)];
//    [actionSheet release];

}

- (void) dismissActionSheet: (id) sender
{
    UISegmentedControl *segmentBtn = (UISegmentedControl *) sender;
    if (segmentBtn.tag == 2){
        NSLog(@"didClosePicker");
        //        NSLog(@"nationality = %@",nationalityLabel.text);
        //        _editNationality = nationalityLabel.text;
        //        for (UILabel *labelFor in labelArray) {
        //            if(labelFor.tag == 4){
        //                labelFor.text = nationalityLabel.text;
        //            }
        //        }
    }
    
    // overlayImageView.hidden = YES;
    [actionSheet dismissWithClickedButtonIndex: 0 animated:YES];
}


#pragma mark - PICKERVIEW DELEGATE
- (void)pickerView:(UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent:(NSInteger)component {
    // Handle the selection
    arrayIndex = [subjectList objectAtIndex:row];
}

// tell the picker how many rows are available for a given component
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return subjectList.count;
}

// tell the picker how many components it will have
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// tell the picker the title for a given component
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
   return [subjectList objectAtIndex:row];
}

// tell the picker the width of each row for a given component
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    int sectionWidth = 300;
    
    return sectionWidth;
}


@end
