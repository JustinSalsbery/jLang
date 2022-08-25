
# Tokens: 
USE, OBJ, VAL, REQ, LIM, COL (:), SEMI (;), COM (,), PER (.), SQTE ('), DQTE ("), UND (_), EQ (=), NAME, LPAR, RPAR, LANG (<), RANG (>), LBRACK ([), RBRACK (]), LBRACE ({), RBRACE (}), ESC (\), AT (@), HASH (#), PLUS, PLUS_EQ, MIN, MIN_EQ, MULT, MULT_EQ, DIV, DIV_EQ, PERC (%), PERC_EQ, DOLL ($), DOLL_EQ, CAR (^), CAR_EQ, AND (&), AND_EQ, PIPE (|), PIPE_EQ, TILDE (~), TILDE_EQ, QUES (?), QUES_EQ, EXCL (!), EXCL_EQ

# Expressions:
```
PATH : NAME (PER NAME)*
```
## global.j (or main.j – capitalization ignored)
```
USE_EXPR : USE [PATH]

val name = name
val name, name = ...
```
## *.j
```

```