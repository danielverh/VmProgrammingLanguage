grammar dash;

statement: expression ';' | operation | block;
operation: ifOp;

ifOp: IF expression SELECT statement
    (|(ELSEIF expression SELECT statement))
    (|(ELSE SELECT statement));

block: L_CURLY_BRACKET statement* R_CURLY_BRACKET;
expression: 
    INT |
    FLOAT
;

ELSEIF: 'else if';
IF: 'if';
ELSE: 'else';

SELECT: '=>';
L_CURLY_BRACKET: '{';
R_CURLY_BRACKET: '}';
DECIMAL: '.';

// Operators
ADD: '+';
SUB: '-';
MUL: '*';
DIV: '/';
NOT: '!';

INT: [0-9]+;
FLOAT: [0-9]* DECIMAL [0-9]+;
ID: ([a-zA-Z_])+ ([a-zA-Z_] | [0-9])*;


WS: [\n\t\r]+->skip;
COMMENT: '/*' .*? '*/' -> skip;

LINE_COMMENT: '//' ~[\r\n]* -> skip;