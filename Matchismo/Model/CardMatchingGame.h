//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Marc Schweikert on 4/3/13.
//  Copyright (c) 2013 Marc Schweikert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

-(id)initWithCardCount:(NSUInteger)cardCount
			 usingDeck:(Deck *)deck;

-(void)flipCardAtIndex:(NSUInteger)index;

-(Card *)cardAtIndex:(NSUInteger)index;

@property (readonly, nonatomic) int score;

@end
