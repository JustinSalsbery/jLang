# legalJ

## Tokens: 
USE, OBJ, VAL, REQ, LIM, COL (:), SEMI (;), COM (,), PER (.), SQTE ('), DQTE ("), UND (_), EQ (=), NAME, LPAR, RPAR, LANG (<), RANG (>), LBRACK ([), RBRACK (]), LBRACE ({), RBRACE (}), ESC (\), AT (@), HASH (#), PLUS, PLUS_EQ, MIN, MIN_EQ, MULT, MULT_EQ, DIV, DIV_EQ, PERC (%), PERC_EQ, DOLL ($), DOLL_EQ, CAR (^), CAR_EQ, AND (&), AND_EQ, PIPE (|), PIPE_EQ, TILDE (~), TILDE_EQ, QUES (?), QUES_EQ, EXCL (!), EXCL_EQ

## Expressions:
```
PATH : NAME (PER NAME)*
NAME_LIST : NAME (COM NAME)*
UPDATE : EQ | PLUS_EQ | MIN_EQ | MULT_EQ | DIV_EQ | PERC_EQ | DOLL_EQ | CAR_EQ | AND_EQ | PIPE_EQ | TILDE_EQ # NOTE: NOT QUES_EQ, EXCL_EQ
EXPR_LIST : 
```
### global.j (or main.j – capitalization ignored)
```
USE_STMT : USE [PATH]
VAL_DECL : VAL [NAME_LIST] (COL [NAME_LIST] | ε) EQ [EXPR_LIST]



val name = name
val name, name = ...
```
### *.j
```

```