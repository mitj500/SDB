#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_MACRO_LEN 100
#define MAX_MACRO_NAME_LEN 20
#define MAX_PARAMS 10

// Structure to represent a macro
typedef struct {
    char name[MAX_MACRO_NAME_LEN];
    char definition[MAX_MACRO_LEN];
    char params[MAX_PARAMS][MAX_MACRO_NAME_LEN];
    int param_count;
} Macro;

// Function to parse a macro definition
void parse_macro_definition(char *line, Macro *macro) {
    char *token = strtok(line, " ");
    strcpy(macro->name, token);
    token = strtok(NULL, " ");
    strcpy(macro->definition, token);
    macro->param_count = 0;
    token = strtok(NULL, " ");
    while (token != NULL) {
        strcpy(macro->params[macro->param_count], token);
        macro->param_count++;
        token = strtok(NULL, " ");
    }
}

// Function to process the input file
void process_input(FILE *input) {
    Macro macros[100]; // Assuming a maximum of 100 macros
    int macro_count = 0;
    char line[MAX_MACRO_LEN];
    while (fgets(line, sizeof(line), input) != NULL) {
        // Check if the line is a macro definition
        if (strncmp(line, "MACRO", 5) == 0) {
            Macro macro;
            parse_macro_definition(line + 6, &macro); // Skip "MACRO" and space
            macros[macro_count++] = macro;
        }
    }
    // Printing the collected macro definitions (for demonstration)
    printf("Macro Definitions:\n");
    for (int i = 0; i < macro_count; i++) {
        printf("%s %s", macros[i].name, macros[i].definition);
        for (int j = 0; j < macros[i].param_count; j++) {
            printf(" %s", macros[i].params[j]);
        }
        printf("\n");
    }
}

int main() {
    FILE *input = fopen("input.asm", "r"); // Input file containing macro definitions
    if (input == NULL) {
        perror("Error opening input file");
        return EXIT_FAILURE;
    }
    process_input(input);
    fclose(input);
    return EXIT_SUCCESS;
}
