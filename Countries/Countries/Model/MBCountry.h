//
//  MBCountry.h
//  Countries
//
//  Created by Mitchell Budge on 11/14/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBCountry : NSObject

@property (nonatomic, readonly, copy) NSString *name;

- (instancetype) initWithName:(NSString *)name;

- (instancetype) initWithDictionary:(NSDictionary *)dictionary;

@end

