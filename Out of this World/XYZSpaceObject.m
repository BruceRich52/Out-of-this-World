//
//  XYZSpaceObject.m
//  Out of this World
//
//  Created by Bruce Rich on 8/16/14.
//  Copyright (c) 2014 NoNameOrg. All rights reserved.
//

#import "XYZSpaceObject.h"
#import "AstronomicalData.h"

@implementation XYZSpaceObject

// override default constructor
-(id)init
{
    self = [self initWith:nil andImage:nil];
    return self;
}

-(id)initWith:(NSDictionary *)data andImage:(UIImage *)planetImage
{
    // required LOC for designated initializer
    self = [super init];
    
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue]; // get primitive out of NSNUMBER
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    self.nickname = data[PLANET_NICKNAME];
    self.interestingFact = data[PLANET_INTERESTING_FACT];
    
    self.spaceImage = planetImage;
    return self;
}

@end
