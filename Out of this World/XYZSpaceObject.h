//
//  XYZSpaceObject.h
//  Out of this World
//
//  Created by Bruce Rich on 8/16/14.
//  Copyright (c) 2014 NoNameOrg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZSpaceObject : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong, nonatomic) NSString *nickname;
@property (strong, nonatomic) NSString *interestingFact;

@property (strong, nonatomic) UIImage *spaceImage;

-(id)initWith:(NSDictionary *)planetData andImage:(UIImage *)planetImage;

@end
