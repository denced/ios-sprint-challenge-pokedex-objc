//
//  DSCPokemon.m
//  PokedexOBJC
//
//  Created by denis cedeno on 6/12/20.
//  Copyright © 2020 DenCedeno Co. All rights reserved.
//

#import "DSCPokemon.h"

@interface DSCPokemon()
@property (nonatomic, nullable) NSMutableArray *abilitiesArray;
@end

@implementation DSCPokemon

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (self = [super init]) {
        self.name = dictionary[@"name"];
        self.pokemonURL = dictionary[@"url"];
    }
    return self;
}

- (void)getAbilityArray:(NSArray *)abilityArray
{
    NSMutableArray<NSString *> *ability = [@[] mutableCopy];
    
    for (NSDictionary *dictionary in abilityArray) {
        NSDictionary *aDictionary = dictionary[@"ability"];
        NSString *abilityString = aDictionary[@"name"];
        [ability addObject:abilityString];
    }
    
    self.abilities = [ability componentsJoinedByString:@"\n"];
}

@end
