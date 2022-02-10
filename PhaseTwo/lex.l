/* Definition Section*/

%{
    #include "parser4.tab.h"
    #include <stdio.h>
   
%}



/* Rule Section */

%%



"--" {
    return (TOKEN_MINUS_MINUS);
}

"-" {
    
    return (TOKEN_MINUS);
}

[0-9]+|[-0-9]+ { yylval.number = atoi(yytext); return(TOKEN_INT_CONST);}

["][a-z|A-Z| ]+["] {
    sscanf(yytext, "%s", yylval.name);
    
    return (TOKEN_CHAR_CONST);

}


[#].* {


    return (TOKEN_ONELINE_COMMENT);

}

[#!][a-z|A-Z| | \n][!#] {
    
    return (TOKEN_SEVERAL_LINE_COMMENT);
}



"[" {
    
    return (TOKEN_LEFTBRACKET);
}
"]" {
    
    return (TOKEN_RIGHTBRACKET);
}
"{" {
    
    return (TOKEN_LEFTBRACE);
}
"}" {
    
    return (TOKEN_RIGHTBRACE);
}
"(" {
    
    return (TOKEN_LEFTPAREN);
}
")" {
    
    return (TOKEN_RIGHTPAREN);
}
"," {
    
    return (TOKEN_COMMA);
}
"." {
    
    return (TOKEN_DOT);
}



"+" {
    
    return (TOKEN_PLUS);
}

"*" {
    
    return (TOKEN_MULTI);
}
"/" {
    
    return (TOKEN_SLASH);
}

"^" {
    
    return (TOKEN_CARET);
}
"!" {
    
    return (TOKEN_EXCLAMATION);
}


"++" {
    return (TOKEN_PLUS_PLUS);
}

"=" {
    
    return (TOKEN_ASSIGN);
}
"%" {
	return(TOKEN_MOD);
}
"+=" {
    return(TOKEN_PLUSEQUAL);
}
"-=" {
    return(TOKEN_MINUSEQUAL);
}
"*=" {
    return(TOKEN_MULTIEQUAL);
}
"/=" {
    return(TOKEN_DIVIDEEQUAL);
}
"%=" {
    return(TOKEN_MODEQUAL);
}

">" {
    
    return (TOKEN_GREATER);
}
"<" {
    
    return (TOKEN_LESS);
}
"<=" {
    
    return (TOKEN_LESSANDEQUAL);
}
">=" {
    
    return (TOKEN_GREATERANDEQUAL);
}



"==" {
    
    return (TOKEN_EQUAL);
}
"!=" {
    
    return (TOKEN_NOTEQUAL);
}
"|" {
    
    return (TOKEN_PIPE);
}
"||" {
    
    return (TOKEN_OR);
}
"&" {
    
    return (TOKEN_AMPERSAND);
}
"&&" {
    
    return (TOKEN_AND);
}




"int" {
    
    return (TOKEN_INT);
}

"char" {
    
    return (TOKEN_CHAR);
}

"if" {
    
    return (TOKEN_IF);
}

"else" {
    
    return (TOKEN_ELSE);

}

"elseif" {
    
    return (TOKEN_ELSEIF);
}

"while" {
    
    return (TOKEN_WHILE);
    
}

"for" {
    
    return (TOKEN_FOR);
}

"return" {
    
    return (TOKEN_RETURN);
    
}

"void" {
    
    return (TOKEN_VOID);
}

"main" {
    
    return (TOKEN_MAIN);
}

"continue" {
    
    return (TOKEN_CONTINUE);
}

"break" {
    
    return (TOKEN_BREAK);
    

}




[a-z|A-Z|_][a-z|A-Z|0-9|_]* {
    
    return (TOKEN_IDENTIFIER);

}




[ |\n]+ {

}


%%
 /* Code Section */
