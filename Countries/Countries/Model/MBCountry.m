//
//  MBCountry.m
//  Countries
//
//  Created by Mitchell Budge on 11/14/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MBCountry.h"

@implementation MBCountry

- (instancetype) initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = [name copy];
    }
    return self;
}

- (instancetype) initWithDictionary:(NSDictionary *)dictionary {
    NSString *name = dictionary[@"name"];
    
    return [self initWithName:name];
}

@end

