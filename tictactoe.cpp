#include <iostream>
#include <cmath>

int width = 3;
int height = 3;
int area = width*height;
int board[] = {};
std::string bar = "--";

enum PlayerSymbols {
    PlayerOne = 'X', //Can be changed
    PlayerTwo = 'O', //Can be changed
    NoPlayer = '#',  //Can be changed
    Error = 'E'      //Don't change, though technically it can be :P
};

char PlayerLetter(int ID) { //Returns a character/player mark to display
    if (ID == 0) {
        return PlayerSymbols::NoPlayer;
    } else if (ID == 1) {
        return PlayerSymbols::PlayerOne;
    } else if (ID == 2) {
        return PlayerSymbols::PlayerTwo;
    } else {
        return PlayerSymbols::Error;
    }
}

void cleanBoard() { //Sets up board data, cleans the board.
    for (int x = 0; x < area; x++) {
        board[x] = 0;
    }
}

void printBoard() { //Buys you a foot long subway
    for (int x = 1; x <= area; x++) {
        std::cout << " " << PlayerLetter(board[x-1]);
        if (x % width != 0) {
            std::cout << " |";
        } else if (x != area) {
            std::cout << "\n" << bar << "\n";
        }
    }
}

void clear() { //clears screen
    system("clear");
}

int main() {
    
    
    
    for (int x = 0; x < width; x++) { //Adds a bar per position
        bar = bar + "-";
    }
    
    for (int x = 1; x <= width - 1; x++) { //Adds a bar per spacer, the " | "
        bar = bar + "---";
    }
    
    //Code Above only needs to be ran once unless if width or height are changed.
    
    
    printBoard();
    
    
    
    return 0;
}