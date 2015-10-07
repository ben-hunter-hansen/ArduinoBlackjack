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

const char CARDS[] = {
        'A', '2', '3', '4', '5',
        '6', '7', '8', '9', 'T',
        'J', 'Q', 'K'
};

const int DECK_SIZE = 52;
const int HAND_SIZE = 4; // This may need to be raised

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
void printCards(char *cards, unsigned int row, unsigned int col) {

    lcd.setCursor(col,row);
    for(int i = 0; i < cardCount(cards); i++) {

        if(cards[i] == 'T') {
            lcd.print("10|");
        } else {
            lcd.print(" ");
            lcd.print(cards[i]);
            lcd.print("|");
        }
    }
}
/*
 *  Pretty prints a card
 */
void printCards(char card, unsigned int row, unsigned int col) {
    lcd.setCursor(col,row);
    if(card == 'T') {
        lcd.print("10|");
    } else {
        lcd.print(card);
        lcd.print(" |");
    }
}

/*
 *  Shifts the deck over after cards are drawn,
 *  so the first index of the deck is pointing at the next
 *  card.  This also re sizes the deck.
 */
void shiftDeck(char deck[DECK_SIZE], int drawn) {
    for(int i = drawn; i < DECK_SIZE; i++) {
        deck[i - drawn] = deck[i];
        deck[i] = 0; //A card will either take its place, or terminate the deck when i = DECK_SIZE - 1.
    }
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
void drawHand(char *hand, char *deck) {
    if(deck[0] == 0) {
        generateDeck(deck);
    }

    hand[0] = deck[0];
    hand[1] = deck[1];
    hand[2] = '\0';

    shiftDeck(deck, 2); // Resize the deck
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

void setup() {
    lcd.begin(16, 2);
    Serial.begin(9600);
    pinMode(10,OUTPUT);
    digitalWrite(10, HIGH);

    randomSeed(analogRead(RNG_SEED_PIN)); // Seed the PRNG with analog noise from A2
}

void loop() {
    static char deck[DECK_SIZE];
    static char hand[HAND_SIZE];
    static int handsDealt = 0;
    static bool first = true;

    if(first) {
        generateDeck(deck);
        drawHand(hand,deck);
        first = false;
    }

    if(sensorValue != analogRead(A0)) {
        sensorValue = analogRead(A0);
        Button button = (Button) getButton();

        switch (button) {
            case UP_BTN:
                break;
            case DOWN_BTN:
                drawHand(hand,deck);
                ++handsDealt;
                lcd.setCursor(0,0);
                lcd.print(handsDealt);
                break;
            case LEFT_BTN:
                break;
            case RIGHT_BTN:
                break;
            case SELECT_BTN:;
                break;
            default:
                break;
        }
    }

    printCards(hand,1,0);
    delay(100);
}