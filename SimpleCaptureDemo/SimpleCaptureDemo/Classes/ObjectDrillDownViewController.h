//
//  ObjectDrillDownViewControllerViewController.h
//  SimpleCaptureDemo
//
//  Created by Lilli Szafranski on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SharedData.h"
#import "ArrayDrillDownViewController.h"
#import "JRCapture.h"

@interface ObjectDrillDownViewController : UIViewController <UINavigationBarDelegate, UITableViewDelegate,
UITableViewDataSource, UITextFieldDelegate, JRCaptureObjectDelegate>
{
    UITableView    *myTableView;
    NSMutableArray *propertyArray;

    BOOL isEditing;
    UITextField *firstResponder;
}
@property (nonatomic, strong) IBOutlet UITableView     *myTableView;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *myUpdateButton;
- (IBAction)updateButtonPressed:(id)sender;

- (id)initWithNibName:(NSString*)nibNameOrNil bundle:(NSBundle*)nibBundleOrNil forObject:(JRCaptureObject*)object
  captureParentObject:(JRCaptureObject*)parentObject andKey:(NSString*)key;

@end
