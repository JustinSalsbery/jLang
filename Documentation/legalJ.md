# legalJ

## Tokens: 
USE, OBJ, VAL, FUN,  REQ, LIM, IF, ELSE, AND, OR, COL (:), SEMI (;), COM (,), PER (.), SQTE ('), DQTE ("), UND (_), EQ (=), NAME, LPAR, RPAR, LANG (<), LAND_EQ, RANG (>), RANG_EQ,  LBRACK ([), RBRACK (]), LBRACE ({), RBRACE (}), ESC (\), AT (@), HASH (#), PLUS, PLUS_EQ, MIN, MIN_EQ, MULT, MULT_EQ, DIV, DIV_EQ, PERC (%), PERC_EQ, DOLL ($), DOLL_EQ, CAR (^), CAR_EQ, AMP (&), AND_EQ, PIPE (|), PIPE_EQ, TILDE (~), TILDE_EQ, QUES (?), QUES_EQ, EXCL (!), EXCL_EQ

## Expressions:
```
PATH : NAME (PER NAME)*
NAME_LIST : NAME (COM NAME)*
UPDATE : EQ | PLUS_EQ | MIN_EQ | MULT_EQ | DIV_EQ | PERC_EQ | DOLL_EQ | CAR_EQ | AND_EQ | PIPE_EQ | TILDE_EQ # NOTE: NOT QUES_EQ, EXCL_EQ
EXPR_LIST : 

USE_STMT : USE [PATH]
VAL_DECL : VAL [NAME_LIST] (COL [NAME_LIST] | ε) EQ [EXPR_LIST]

IF_STMT : IF COL [COND] EQ [EXPR_LIST] SEMI ([ELSE_STMT] | ε)
ELSE_STMT : 

```






```
req Animal = # COL NAME not allowed here!
    ... ;
obj Cat: Animal =
    ... ;

fun name: Int x, (Int > Int) y > [Int] =
    ... ;
    
val a = [0, 1, 2, 3] (order: true)
val b = <1, "hello">
val c = {"a", "b", "c"} # set
val d = {"a": 1, "b": 2, "c": 3} # dictionary

@Name lim Direction = north, south, east, west

else: x ?= 7 =
    ret x;
if: x ?= 1 =
    ret 1;
> 2 =
    ret 2;
> 3 =
    ret 3;
```