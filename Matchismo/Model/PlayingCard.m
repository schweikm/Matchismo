//
//  PlayingCard.m
//  Matchismo
//
//  Created by Marc Schweikert on 3/30/13.
//  Copyright (c) 2013 Marc Schweikert. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(int)match:(NSArray *)otherCards {
	int score = 0;

	if (1 == otherCards.count) {
		PlayingCard* otherCard = [otherCards lastObject];

		if ([otherCard.suit isEqualToString:self.suit]) {
			score = 1;
		} else if (otherCard.rank == self.rank) {
			score = 4;
		}
	}

	return score;
}

-(NSString *)contents {
	NSArray* rankStrings = [PlayingCard rankStrings];
	return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

// because we provide the setter and the getter
@synthesize suit = _suit;

+(NSArray *)validSuits {
	return @[@"♠", @"♦", @"♠", @"♣"];
}

+(NSArray *)rankStrings {
	return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+(NSUInteger)maxRank {
	return [self rankStrings].count - 1;
}

-(void)setSuit:(NSString *)suit {
	if ([[PlayingCard validSuits] containsObject:suit]) {
		_suit = suit;
	}
}

-(NSString *)suit {
	return _suit ? _suit : @"?";
}

-(void)setRank:(NSUInteger)rank {
	if (rank <= [PlayingCard maxRank]) {
		_rank = rank;
	}
}

@end
