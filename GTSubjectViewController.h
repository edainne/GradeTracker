//
//  GTSubjectViewController.h
//  GradeTracker
//
//  Created by Edainne Ladys S. Silva on 12/31/13.
//  Copyright (c) 2013 Edainne Ladys S. Silva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface GTSubjectViewController : UIViewController
<
UIPickerViewDelegate,
UIPickerViewDataSource,
UIActionSheetDelegate
>
{
    NSMutableArray *subjectList;
    UIActionSheet *actionSheet;
    UIPickerView *pickerView;
    NSNumber* arrayIndex;
}
@property (nonatomic, retain) IBOutlet UIButton* addSubject;
@property (nonatomic, retain) IBOutlet UILabel* subjectTitleLabel;

-(IBAction)clickedAddSubject: (id)sender;


@end
