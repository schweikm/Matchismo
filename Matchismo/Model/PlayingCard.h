//
//  PlayingCard.h
//  Matchismo
//
//  Created by Marc Schweikert on 3/30/13.
//  Copyright (c) 2013 Marc Schweikert. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString* suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@end
