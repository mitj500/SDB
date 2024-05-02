#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE_LENGTH 100
#define MAX_SYMBOL_LENGTH 50

struct Symbol {
    char name[MAX_SYMBOL_LENGTH];
    int address;
    struct Symbol* next;
};

typedef struct Symbol Symbol;

Symbol* symbolTable = NULL;

void addToSymbolTable(char* label, int address) {
    Symbol* newSymbol = (Symbol*)malloc(sizeof(Symbol));
    if (newSymbol == NULL) {
        printf("Memory allocation error for new symbol\n");
        exit(EXIT_FAILURE);
    }
    strcpy(newSymbol->name, label);
    newSymbol->address = address;
    newSymbol->next = NULL;

    if (symbolTable == NULL) {
        symbolTable = newSymbol;
    } else {
        Symbol* current = symbolTable;
        while (current->next != NULL) {
            current = current->next;
        }
        current->next = newSymbol;
    }
}

int main() {
    FILE *inputFile;
    char line[MAX_LINE_LENGTH];
    char label[MAX_SYMBOL_LENGTH];
    int address = 0;

    inputFile = fopen("input.asm", "r");
    if (inputFile == NULL) {
        printf("Error opening input file\n");
        return EXIT_FAILURE;
    }

    while (fgets(line, MAX_LINE_LENGTH, inputFile) != NULL) {
        line[strcspn(line, "\n")] = '\0';
        char *token = strtok(line, " \t");
        if (token != NULL && token[strlen(token) - 1] == ':') {
            strncpy(label, token, strlen(token) - 1);
            label[strlen(token) - 1] = '\0';
            addToSymbolTable(label, address);
        }
        address++;
    }

    fclose(inputFile);

    printf("Symbol Table:\n");
    Symbol* current = symbolTable;
    while (current != NULL) {
        printf("%s -> %d\n", current->name, current->address);
        current = current->next;
    }

    while (symbolTable != NULL) {
        Symbol* temp = symbolTable;
        symbolTable = symbolTable->next;
        free(temp);
    }

    return EXIT_SUCCESS;
}
