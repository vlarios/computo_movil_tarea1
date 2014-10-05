//
//  ViewController.m
//  Tarea1
//
//  Created by Victor Larios on 10/3/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int cnt=0;
int colorCnt=0;
int backgroundCnt=0;
int scoreCnt=0;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender {
    if (colorCnt==0) {
        self.myName.textColor = [UIColor redColor];
        colorCnt++;
    }
    else if (colorCnt==1) {
        self.myName.textColor = [UIColor greenColor];
        colorCnt++;
    }
    else if (colorCnt==2) {
        self.myName.textColor = [UIColor blueColor];
        colorCnt++;
    }
    else if (colorCnt==3) {
        self.myName.textColor = [UIColor orangeColor];
        colorCnt++;
    }
    else if (colorCnt==4) {
        self.myName.textColor = [UIColor blackColor];
        colorCnt=0;
    }
}

- (IBAction)changeBackground:(id)sender {
    if (backgroundCnt==0) {
        self.view1.backgroundColor = [UIColor yellowColor];
        backgroundCnt++;
    }
    else if (backgroundCnt==1) {
        self.view1.backgroundColor = [UIColor redColor];
        backgroundCnt++;
    }
    else if (backgroundCnt==2) {
        self.view1.backgroundColor = [UIColor greenColor];
        backgroundCnt++;
    }
    else if (backgroundCnt==3) {
        self.view1.backgroundColor = [UIColor blueColor];
        backgroundCnt++;
    }
    else if (backgroundCnt==4) {
        self.view1.backgroundColor = [UIColor whiteColor];
        backgroundCnt=0;
    }
    
}
- (IBAction)sayHello:(id)sender {
    self.screen2Label.text = @"Hello";
}

- (IBAction)sliderCtl:(id)sender {
    self.cityPhoto.alpha = self.slider.value;
}

- (IBAction)changeImage:(id)sender {
    
    
    
    if (cnt==0) {
        UIImage *image = [UIImage imageNamed: @"photo2.jpg"];
        [self.myImage setImage:image];
        cnt++;
    }
    else if (cnt==1) {
        UIImage *image = [UIImage imageNamed: @"photo3.jpg"];
        [self.myImage setImage:image];
        cnt++;
    }
    else if (cnt==2) {
        UIImage *image = [UIImage imageNamed: @"photo1.jpg"];
        [self.myImage setImage:image];
        cnt++;
        cnt=0;
    }
    
}
- (IBAction)incScoreCtl:(id)sender {
    scoreCnt++;
    self.score.text=[NSString stringWithFormat:@"%i",scoreCnt];
}

- (IBAction)decScoreCtl:(id)sender {
    scoreCnt--;
    self.score.text=[NSString stringWithFormat:@"%i" ,scoreCnt];
}


- (IBAction)clubSelectControl:(id)sender {
    
    if (self.clubSelector.selectedSegmentIndex == 0) {
        UIImage *image = [UIImage imageNamed: @"chivas-guadalajara-211.jpg"];
        [self.clubPhoto setImage:image];
    }
    else if (self.clubSelector.selectedSegmentIndex == 1) {
        UIImage *image = [UIImage imageNamed:@"america.jpg"];
        [self.clubPhoto setImage:image];
    }}

- (IBAction)playMovieCtl:(id)sender{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"dogs" ofType: @"mp4"] ];
    MPMoviePlayerViewController *playercontroller = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
    [self presentMoviePlayerViewControllerAnimated: playercontroller];
    playercontroller.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    [playercontroller.moviePlayer play];
    playercontroller = nil;
}

@end
