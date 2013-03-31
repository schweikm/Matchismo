//
//  Deck.m
//  Matchismo
//
//  Created by Marc Schweikert on 3/30/13.
//  Copyright (c) 2013 Marc Schweikert. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray* cards;
@end

@implementation Deck

-(NSMutableArray*)cards {
	if (! _cards) {
		_cards = [[NSMutableArray alloc] init];
	}
	return _cards;
}

-(void)addCard:(Card *)atTop :(BOOL)atTop {
	if (atTop) {
		[self.cards insertObject:card atIndex:0];
	} else {
		[self.cards addObject:card];
	}
}

-(Card*)drawRandomCard {
	
}

@end
