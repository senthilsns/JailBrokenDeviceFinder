//
//  ViewController.m
//  JailBrokenDeviceFinder
//
//  Created by Senthil on 09/12/19.
//  Copyright © 2019 skycliff. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    BOOL status = [self isJailbroken];
    NSLog(@"Jail Broken = %d",status);

    if (status == YES) {
        NSLog(@"Jail Broken Device");
    }else{
        NSLog(@"No Jail Broken Device");

    }
}

-(BOOL)isJailbroken{

     NSString *filePath = @"/Applications/Cydia.app";
     if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
     return YES;
     else
         return NO;
}



@end
