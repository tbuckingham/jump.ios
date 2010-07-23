//
//  JRPublishActivityController.h
//  JRAuthenticate
//
//  Created by lilli on 7/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JRAuthenticate.h"
#import "JRInfoBar.h"




@interface JRPublishActivityController : UIViewController <UINavigationBarDelegate, UITableViewDelegate, UITableViewDataSource, 
                                                           UITabBarDelegate, JRSessionDelegate,
                                                           JRConnectionManagerDelegate>
{
	JRAuthenticate	*jrAuth;
	JRSessionData	*sessionData;

    NSArray         *providers;

    NSString        *selectedProvider;
    NSString        *loggedInUser;
    
    
	UITabBar *myTabBar;
    
    BOOL ready;
    
//	UITableView	*myTableView;	
	UILabel		*title_label;
	JRInfoBar	*infoBar;
    
    JRActivityObject *activity;
    
    /* Activity Spinner and Label displayed while the list of configured providers is empty */
	UILabel					*myLoadingLabel;
	UIActivityIndicatorView *myLoadingActivitySpinner; 
    UIView                  *myLoadingGrayView;
    
    UITextView *myUserContentTextView;
    
    UIImageView *myProviderIcon;
    UILabel     *myPoweredByLabel;
    
    UIView      *myMediaContentView;
    UIView      *myMediaViewBackgroundMiddle;
    UIImageView *myMediaViewBackgroundTop;
    UIImageView *myMediaViewBackgroundBottom;
    UIImageView *myMediaThumbnailView;
    UIActivityIndicatorView *myMediaThumbnailActivityIndicator;
    UILabel     *myTitleLabel;
    UILabel     *myDescriptionLabel;
    
    UIView      *myShareToView;
    UIImageView *myTriangleIcon;
    UIImageView *myProfilePic;
    UIActivityIndicatorView *myProfilePicActivityIndicator;
    UILabel     *myUserName;
    UIButton    *myConnectAndShareButton;
    UIButton    *myJustShareButton;
    UIImageView *mySharedCheckMark;
    UILabel     *mySharedLabel;
    
    NSData *thumbnailData;
    NSData *profilePicData;
    
//    UIButton *bigShareButton;
//    UILabel  *buttonLabel;
//    
//    UITextView *displayNameAndAction_label;
//    UITextView *contentTitle_label;
//    UITextView *contentDescription_label;
//    UIImageView *thumbnail_imageview;
//    UITextView *userContent_textview;

    UIToolbar *keyboardToolbar;
    UIBarItem *shareButton;
    UIBarItem *doneButton;
    
//    UIButton *hideKeyboardButton;
}

//@property (nonatomic, retain) IBOutlet UITableView *myTableView;
@property (nonatomic, retain) IBOutlet UITabBar    *myTabBar;

@property (nonatomic, retain) IBOutlet UILabel                  *myLoadingLabel;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView  *myLoadingActivitySpinner;
@property (nonatomic, retain) IBOutlet UIView                   *myLoadingGrayView;


@property (nonatomic, retain) IBOutlet UITextView *myUserContentTextView;

@property (nonatomic, retain) IBOutlet UIImageView *myProviderIcon;
@property (nonatomic, retain) IBOutlet UILabel     *myPoweredByLabel;
     
@property (nonatomic, retain) IBOutlet UIView      *myMediaContentView;
@property (nonatomic, retain) IBOutlet UIView      *myMediaViewBackgroundMiddle;
@property (nonatomic, retain) IBOutlet UIImageView *myMediaViewBackgroundTop;
@property (nonatomic, retain) IBOutlet UIImageView *myMediaViewBackgroundBottom;
@property (nonatomic, retain) IBOutlet UIImageView *myMediaThumbnailView;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *myMediaThumbnailActivityIndicator;
@property (nonatomic, retain) IBOutlet UILabel     *myTitleLabel;
@property (nonatomic, retain) IBOutlet UILabel     *myDescriptionLabel;
    
@property (nonatomic, retain) IBOutlet UIView      *myShareToView;
@property (nonatomic, retain) IBOutlet UIImageView *myTriangleIcon;
@property (nonatomic, retain) IBOutlet UIImageView *myProfilePic;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *myProfilePicActivityIndicator;
@property (nonatomic, retain) IBOutlet UILabel     *myUserName;
@property (nonatomic, retain) IBOutlet UIButton    *myConnectAndShareButton;
@property (nonatomic, retain) IBOutlet UIButton    *myJustShareButton;
@property (nonatomic, retain) IBOutlet UIImageView *mySharedCheckMark;
@property (nonatomic, retain) IBOutlet UILabel     *mySharedLabel;


@property (nonatomic, retain) IBOutlet UIToolbar *keyboardToolbar;
@property (nonatomic, retain) IBOutlet UIBarItem *shareButton;
@property (nonatomic, retain) IBOutlet UIBarItem *doneButton;


- (IBAction)shareButtonPressed:(id)sender; 
- (IBAction)doneButtonPressed:(id)sender; 


//@property (nonatomic, retain) IBOutlet UILabel *cellDisplayNameAndAction;
//@property (nonatomic, retain) IBOutlet UILabel *cellContentTitle;
//@property (nonatomic, retain) IBOutlet UILabel *cellContentDescription;
//@property (nonatomic, retain) IBOutlet UIImageView *cellImage;
//@property (nonatomic, retain) IBOutlet UITextView *cellUserContent;
//@property (nonatomic, retain) IBOutlet UITableViewCell *myCell;
@end