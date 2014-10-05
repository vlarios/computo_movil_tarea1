//
//  ViewController.h
//  Tarea1
//
//  Created by Victor Larios on 10/3/14.
//
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *colorButton;
@property (weak, nonatomic) IBOutlet UIButton *backgroundButton;
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (weak, nonatomic) IBOutlet UIButton *changeImageButton;
@property (weak, nonatomic) IBOutlet UILabel *myName;
@property (strong, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIButton *sayHelloButon;
@property (weak, nonatomic) IBOutlet UILabel *screen2Label;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIImageView *cityPhoto;
@property (weak, nonatomic) IBOutlet UIImageView *clubPhoto;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clubSelector;
@property (weak, nonatomic) IBOutlet UIButton *incGol;
@property (weak, nonatomic) IBOutlet UIButton *decGol;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UIButton *playMovei;



@end
