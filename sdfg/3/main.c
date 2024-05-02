#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#define MAX_KEYWORDS 32
#define MAX_IDENTIFIERS 100
#define MAX_PUNCTUATIONS 20
#define MAX_SYMBOLS 100
// Function prototypes
void processToken(char token[]);
char keywords[MAX_KEYWORDS][20] = {"int", "float", "if", "else", "while", "for",
"return"}; // Example keywords
char identifiers[MAX_IDENTIFIERS][20];
char punctuations[MAX_PUNCTUATIONS][2]; // Assuming single character
punctuations char symbols[MAX_SYMBOLS][2]; // Assuming single character symbols
int keywordCount = 0;
int identifierCount = 0;
int punctuationCount = 0;

int symbolCount = 0;
int main()
{
FILE *sourceFile;
char filename[100], c;
char token[100] = "";
int i;
printf("Enter the filename: ");
scanf("%s", filename);
sourceFile = fopen(filename, "r");
if (sourceFile == NULL)
{
printf("File not found or error in opening the file.\n"); exit(0);
}
while ((c = fgetc(sourceFile)) != EOF)
{
if (isalnum(c) || c == '.')
{
strncat(token, &c, 1);
}
else
{
if (strlen(token) > 0)
{
processToken(token);
memset(token, 0, sizeof(token));

}
if (c == ' ' || c == '\n' || c == '\t')
{
continue; // Skip whitespace characters

}
else if (ispunct(c))
{
punctuations[punctuationCount][0] = c;
punctuations[punctuationCount][1] = '\0';
punctuationCount++;

}
else {
symbols[symbolCount][0] = c;
symbols[symbolCount][1] = '\0';
symbolCount++;
}
}
}

fclose(sourceFile);
printf("Keywords:\n");
for (i = 0; i < keywordCount; i++)
{
printf("%s\n", keywords[i]);
}
printf("\nIdentifiers:\n");
for (i = 0; i < identifierCount; i++)
{
printf("%s\n", identifiers[i]);
}
printf("\nPunctuations:\n");
for (i = 0; i < punctuationCount; i++)
{
printf("%s\n", punctuations[i]);
}
printf("\nSymbols:\n");
for (i = 0; i < symbolCount; i++)
{
printf("%s\n", symbols[i]);
}
return 0;
}
void processToken(char token[])
{
int i;
for (i = 0; i < MAX_KEYWORDS; i++)
{
if (strcmp(token, keywords[i]) == 0)
{
return;
}
}
for (i = 0; i < identifierCount; i++)
{
if (strcmp(token, identifiers[i]) == 0)
{
return;
}
}
strcpy(identifiers[identifierCount], token);
identifierCount++;
}
