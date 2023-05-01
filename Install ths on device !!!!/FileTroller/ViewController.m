//
//  ViewController.m
//  FileTroller
//
//  Created by Nathan Senter on 3/7/23.
//

#import "ViewController.h"
#import "grant_full_disk_access.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Grant Full Disk Access" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(grantFullDiskAccessButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(0, 0, 200, 50);
    button.center = self.view.center;
    [self.view addSubview:button];
}

- (void)grantFullDiskAccessButtonTapped:(UIButton *)sender {
    grant_full_disk_access(^(NSError* error) {
        NSLog(@"grant_full_disk_access returned error: %@", error);
    });
}


@end



