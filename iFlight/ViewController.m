//
//  ViewController.m
//  iFlight
//
//  Created by HDGamer1214 on 1/22/14.
//  Copyright (c) 2014 Austin Brogdon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)Collision{
    
    if (CGRectIntersectsRect(Heli.frame, Obstacle.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Obstacle2.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Top1.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Top2.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Top3.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Top4.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Top5.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Top6.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Top7.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Bottom1.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Bottom2.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Bottom3.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Bottom4.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Bottom5.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Bottom6.frame)) {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Heli.frame, Bottom7.frame)) {
        [self EndGame];
    }

    if (Heli.center.y > 273) {
        [self EndGame];
    }
    
    if (Heli.center.y < 48) {
        [self EndGame];
    }
    
}

-(void)EndGame{
    
    if (ScoreNumber > HighScore) {
        HighScore = ScoreNumber;
    }
    
    Heli.hidden = YES;
    [timer invalidate];
    [Scorer invalidate];
    
    [self performSelector:@selector(NewGame) withObject:nil afterDelay:0.5];
}


-(void)NewGame{
    
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    Obstacle.hidden = YES;
    Obstacle2.hidden = YES;
    
    Intro1.hidden = NO;
    Intro2.hidden = NO;
    Intro3.hidden = NO;
    
    Heli.hidden = NO;
    Heli.center = CGPointMake(34, 102);
    Heli.image = [UIImage imageNamed:@"HeliUp.png"];
    
    Start = YES;
    ScoreNumber = 0;
    Score.text = [NSString stringWithFormat:@"Score: 0"];
    
}

-(void)HeliMove{
    
    [self Collision];
    
    Heli.center = CGPointMake(Heli.center.x, Heli.center.y + Y);
    
    Obstacle.center = CGPointMake(Obstacle.center.x - 10, Obstacle.center.y);
    Obstacle2.center = CGPointMake(Obstacle2.center.x - 10, Obstacle2.center.y);
    Bottom1.center = CGPointMake(Bottom1.center.x - 10, Bottom1.center.y);
    Bottom2.center = CGPointMake(Bottom2.center.x - 10, Bottom2.center.y);
    Bottom3.center = CGPointMake(Bottom3.center.x - 10, Bottom3.center.y);
    Bottom4.center = CGPointMake(Bottom4.center.x - 10, Bottom4.center.y);
    Bottom5.center = CGPointMake(Bottom5.center.x - 10, Bottom5.center.y);
    Bottom6.center = CGPointMake(Bottom6.center.x - 10, Bottom6.center.y);
    Bottom7.center = CGPointMake(Bottom7.center.x - 10, Bottom7.center.y);
    Top1.center = CGPointMake(Top1.center.x - 10, Top1.center.y);
    Top2.center = CGPointMake(Top2.center.x - 10, Top2.center.y);
    Top3.center = CGPointMake(Top3.center.x - 10, Top3.center.y);
    Top4.center = CGPointMake(Top4.center.x - 10, Top4.center.y);
    Top5.center = CGPointMake(Top5.center.x - 10, Top5.center.y);
    Top6.center = CGPointMake(Top6.center.x - 10, Top6.center.y);
    Top7.center = CGPointMake(Top7.center.x - 10, Top7.center.y);
    
    
    if (Obstacle.center.x < 0) {
        RandomPosistion = arc4random() %75;
        RandomPosistion = RandomPosistion + 110;
        Obstacle.center = CGPointMake(510, RandomPosistion);
    }
    
    if (Obstacle2.center.x < 0) {
        RandomPosistion = arc4random() %75;
        RandomPosistion = RandomPosistion + 110;
        Obstacle2.center = CGPointMake(510, RandomPosistion);
    }
    
    if (Top1.center.x < -30) {
        RandomPosistion = arc4random() %55;
        Top1.center = CGPointMake(510, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom1.center = CGPointMake(510, RandomPosistion);
        
    }
    
    if (Top2.center.x < -30) {
        RandomPosistion = arc4random() %55;
        Top2.center = CGPointMake(510, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom2.center = CGPointMake(510, RandomPosistion);
        
    }
    if (Top3.center.x < -30) {
        RandomPosistion = arc4random() %55;
        Top3.center = CGPointMake(510, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom3.center = CGPointMake(510, RandomPosistion);
        
    }
    if (Top4.center.x < -30) {
        RandomPosistion = arc4random() %55;
        Top4.center = CGPointMake(510, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom4.center = CGPointMake(510, RandomPosistion);
        
    }

    if (Top5.center.x < -30) {
        RandomPosistion = arc4random() %55;
        Top5.center = CGPointMake(510, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom5.center = CGPointMake(510, RandomPosistion);
        
    }

    if (Top6.center.x < -30) {
        RandomPosistion = arc4random() %55;
        Top6.center = CGPointMake(510, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom6.center = CGPointMake(510, RandomPosistion);
        
    }
    if (Top7.center.x < -30) {
        RandomPosistion = arc4random() %55;
        Top7.center = CGPointMake(510, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom7.center = CGPointMake(510, RandomPosistion);
        
    }

    
}

-(void)Scoring{
    

    
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (Start == YES) {
        
        Intro1.hidden = YES;
        Intro2.hidden = YES;
        Intro3.hidden = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(HeliMove) userInfo:nil repeats:YES];
        Scorer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Scoring) userInfo:nil repeats:YES];
        
        Start = NO;
        
        Bottom1.hidden = NO;
        Bottom2.hidden = NO;
        Bottom3.hidden = NO;
        Bottom4.hidden = NO;
        Bottom5.hidden = NO;
        Bottom6.hidden = NO;
        Bottom7.hidden = NO;
        Top1.hidden = NO;
        Top2.hidden = NO;
        Top3.hidden = NO;
        Top4.hidden = NO;
        Top5.hidden = NO;
        Top6.hidden = NO;
        Top7.hidden = NO;
        Obstacle.hidden = NO;
        Obstacle2.hidden = NO;

        RandomPosistion = arc4random() %75;
        RandomPosistion = RandomPosistion + 110;
        Obstacle.center = CGPointMake(570, RandomPosistion);
        
        RandomPosistion = arc4random() %75;
        RandomPosistion = RandomPosistion + 110;
        Obstacle2.center = CGPointMake(855, RandomPosistion);
        
        RandomPosistion = arc4random() %55;
        Top1.center = CGPointMake(560, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom1.center = CGPointMake(560, RandomPosistion);
        
        RandomPosistion = arc4random() %55;
        Top2.center = CGPointMake(640, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom2.center = CGPointMake(640, RandomPosistion);
        
        RandomPosistion = arc4random() %55;
        Top3.center = CGPointMake(720, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom3.center = CGPointMake(720, RandomPosistion);

        RandomPosistion = arc4random() %55;
        Top4.center = CGPointMake(800, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom4.center = CGPointMake(800, RandomPosistion);

        
        RandomPosistion = arc4random() %55;
        Top5.center = CGPointMake(880, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom5.center = CGPointMake(880, RandomPosistion);

        
        RandomPosistion = arc4random() %55;
        Top6.center = CGPointMake(960, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom6.center = CGPointMake(960, RandomPosistion);

        RandomPosistion = arc4random() %55;
        Top7.center = CGPointMake(1040, RandomPosistion);
        RandomPosistion = RandomPosistion + 265;
        Bottom7.center = CGPointMake(1040, RandomPosistion);

        
    
    }
    
    Y = -7;
    Heli.image = [UIImage imageNamed:@"HeliUp.png"];
    
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    Y = 7;
    Heli.image = [UIImage imageNamed:@"HeliDown.png"];
    
}


- (void)viewDidLoad
{
 
    Start = YES;
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    Obstacle.hidden = YES;
    Obstacle2.hidden = YES;
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
