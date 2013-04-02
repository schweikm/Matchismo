//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Marc Schweikert on 3/30/13.
//  Copyright (c) 2013 Marc Schweikert. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic)PlayingCardDeck* cardDeck;

@end

@implementation CardGameViewController

-(PlayingCardDeck *)cardDeck {
	if (! _cardDeck) {
		_cardDeck = [[PlayingCardDeck alloc] init];
	}

	return _cardDeck;
}

- (void)setFlipCount:(int)flipCount {
	_flipCount = flipCount;
	self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
	// draw a random card and show it
	Card* card = [self.cardDeck drawRandomCard];
	[sender setTitle:[card contents] forState:UIControlStateSelected];

	sender.selected = !sender.isSelected;
	self.flipCount++;
}

@end
