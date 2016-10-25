//
//  GameViewController.m
//  OSX-ObjC-Example
//
//  Created by Deepak Surti on 10/24/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "GameViewController.h"
#import "SCNScene+AssimpImport.h"

@implementation GameViewController

- (void)awakeFromNib {
  //  NSString* filePath = @"/Users/deepaksurti/ios-osx/assimp/demo/assets/"
  // @"models-nonbsd/3DS/jeep1.3ds";
  NSString* filePath =
      @"/Users/deepaksurti/ios-osx/assimp/demo/assets/explorer_skinned.dae";
  SCNScene* scene =
      [SCNScene assimpSceneWithURL:[NSURL URLWithString:filePath]];
  // SCNScene* scene = [SCNScene assimpSceneNamed:@"spider.obj"];

  self.gameView.scene = scene;

  // allows the user to manipulate the camera
  self.gameView.allowsCameraControl = YES;

  // show statistics such as fps and timing information
  self.gameView.showsStatistics = YES;

  // configure the view
  self.gameView.backgroundColor = [NSColor whiteColor];
}

@end
