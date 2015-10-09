#include <Arduino.h>
#include <LiquidCrystal.h>
#include <EEPROM.h>

typedef enum BUTTON {
    NO_BTN,
    UP_BTN,
    DOWN_BTN,
    RIGHT_BTN,
    LEFT_BTN,
    SELECT_BTN
} Button;

const int BLACKJACK = 21;
const int BUST = -1;

const char CARDS[] = {
        'A', '2', '3', '4', '5',
        '6', '7', '8', '9', 'T',
        'J', 'Q', 'K'
};

const int DECK_SIZE = 52;
const int HAND_SIZE = 6; // This may need to be raised

const byte RNG_SEED_PIN = A2;

LiquidCrystal lcd(8, 9, 4, 5, 6, 7);
int sensorValue;

/*
 *  Shuffles a deck by iterating over it,
 *  and swapping each card with a random index between
 *  0 (inclusive) and DECK_SIZE (exclusive).
 */
void shuffle(char deck[DECK_SIZE]) {
    for(int i = 0; i < DECK_SIZE; i++) {
        int randIndex = (int) random(DECK_SIZE);
        char temp = deck[i];
        deck[i] = deck[randIndex];
        deck[randIndex] = temp;
        delay(5);
    }
}

/*
 * Counts the amount of cards passed to it
 */
int cardCount(char *cards) {
    int count = 0;
    while(*cards != '\0') {
        ++count;
        ++cards;
    }
    return count;
}

/*
 *  Pretty prints the cards,
 *  starting at a specific row and column
 */
void printCards(char *cards, unsigned int row, unsigned int col, bool faceDown) {

    lcd.setCursor(col,row);

    lcd.print("                ");
    lcd.setCursor(col,row);
    for(int i = 0; i < cardCount(cards); i++) {
        if(!faceDown || i < 1) {
            if(cards[i] == 'T') {
                lcd.print("10|");
            } else {
                lcd.print(" ");
                lcd.print(cards[i]);
                lcd.print("|");
            }
        } else {
          lcd.print(" ?|");
        }
    }
}

/*
 *  Shifts the deck over after cards are drawn,
 *  so the first index of the deck is pointing at the next
 *  card.  This also re sizes the deck.
 */
void shiftDeck(char deck[DECK_SIZE], int drawn) {
    int deckSize = cardCount(deck);
    for(int i = 0; i < deckSize; i++) {
       deck[i] = deck[i + drawn];
    }
    deck[deckSize] = 0;
}


/*
 *  Fills the deck with the correct amount of each card,
 *  then shuffles it.
 */
void generateDeck(char deck[DECK_SIZE]) {
    const int cardsPerSuite = 13, numSuites = 4;
    int k = 0;
    for(int i = 0; i < cardsPerSuite; i++) {
        for(int j = 0; j < numSuites; j++) {
            deck[k] = CARDS[i];
            k++;
        }
    }
    shuffle(deck);
}

/*
 *  Draws a two card hand from the deck.
 */
void drawHand(char *hand, char *deck, int *deckPointer) {
    if(*deckPointer >= DECK_SIZE - 1) {
        shuffle(deck);
        *deckPointer = 0;
    }


    hand[0] = deck[*deckPointer];
    hand[1] = deck[*deckPointer + 1];
    hand[2] = '\0';

    *deckPointer += 2;
}

/*
 *  Draws a card from the deck
 */
void drawCard(char *hand, char *deck, int *deckPointer) {

    if(cardCount(hand) >= HAND_SIZE - 1) {
        return;
    }

    if(*deckPointer >= DECK_SIZE - 1) {
        *deckPointer = 0;
    }

    int handLen = cardCount(hand);
    hand[handLen] = deck[*deckPointer];
    hand[handLen + 1] = '\0';
    ++*deckPointer;

    shuffle(deck);
}

/*
 *  Checks for a button press, returns the button
 *  if one is detected else NO_BTN
 */
int getButton() {
    const int FUDGE = 5;
    int value = analogRead(A0);
    Button button = NO_BTN;

    if(value >= 932 - FUDGE && value <= 932 + FUDGE) {
        button = UP_BTN;
    } else if(value >= 904 - FUDGE && value <= 904 + FUDGE) {
        button = DOWN_BTN;
    } else if(value >= 816 - FUDGE && value <= 816 + FUDGE) {
        button = RIGHT_BTN;
    } else if(value >= 857 - FUDGE && value <= 857 + FUDGE) {
        button = LEFT_BTN;
    } else if(value >= 612 - FUDGE && value <= 612 + FUDGE) {
        button = SELECT_BTN;
    }

    return button;
}

int computeScore(char *hand) {
    int score = 0, aceCount = 0;
    for(int i = 0; i < cardCount(hand); i++) {
        if(hand[i] == 'T' || hand[i] == 'J' || hand[i] == 'Q' || hand[i] == 'K') {
            score += 10;
        } else if(hand[i] == 'A') {
            aceCount++;
        } else {
            score += hand[i]-'0';
        }
    }

    if(aceCount) {
        for(int i = 0; i < aceCount; i++) {
            if(aceCount > 1 || score > 10) {
                score++;
            } else {
                score += 11;
            }
        }
    }

    return score;
}


int hit(char *hand, char *deck, int *deckPointer) {
    drawCard(hand,deck,deckPointer);
}

int stay(char *dealerHand, char *deck, int *deckPointer) {
    printCards(dealerHand,0,0,false);

    int dealerScore = computeScore(dealerHand);
    if(dealerScore >= 16) { // Don't have the dealer try to hit on 16 or up
        return dealerScore;
    }

    while(true) {
        drawCard(dealerHand,deck, deckPointer);
        dealerScore = computeScore(dealerHand);
        printCards(dealerHand,0,0,false);
        if(dealerScore > 21) {
            dealerScore = BUST;
            break;
        } else if(dealerScore == 21) {
            dealerScore = BLACKJACK;
            break;
        } else if(dealerScore >= 16) {
            break;
        }
    }

    return dealerScore;
}

void setup() {
    lcd.begin(16, 2);
    Serial.begin(9600);
    pinMode(10,OUTPUT);
    digitalWrite(10, HIGH);

    randomSeed(analogRead(RNG_SEED_PIN)); // Seed the PRNG with analog noise from A2
}

void loop() {
    static char deck[DECK_SIZE];
    static char dealerHand[HAND_SIZE];
    static char hand[HAND_SIZE];
    static int deckPointer = 0;

    static bool first = true;
    static bool checkForWinner = false;

    if(first) {
        generateDeck(deck);
        drawHand(hand,deck, &deckPointer);
        drawHand(dealerHand, deck, &deckPointer);
        first = false;
    }

    if(sensorValue != analogRead(A0)) {
        sensorValue = analogRead(A0);
        Button button = (Button) getButton();

        switch (button) {
            case UP_BTN:
                hit(hand,deck, &deckPointer);
                break;
            case DOWN_BTN:
                stay(dealerHand,deck, &deckPointer);
                checkForWinner = true;
                break;
            case LEFT_BTN:
                break;
            case RIGHT_BTN:
                break;
            case SELECT_BTN:
                shuffle(deck);
                drawHand(dealerHand, deck, &deckPointer);
                drawHand(hand,deck, &deckPointer);
                checkForWinner = false;
                break;
            default:
                break;
        }
    }

    if(!checkForWinner) { // Print second dealer card face down during the players turn
        printCards(dealerHand,0,0,true);
    }

    printCards(hand,1,0, false);
    lcd.setCursor(14, 0);
    lcd.print(computeScore(hand));
    delay(100);
}