//
//  GTAppDelegate.h
//  GradeTracker
//
//  Created by Edainne Ladys S. Silva on 12/31/13.
//  Copyright (c) 2013 Edainne Ladys S. Silva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GTSubjectViewController.h"

@interface GTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain) GTSubjectViewController *viewController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
