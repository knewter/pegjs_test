AndExpression
  = Clause ((AND / AND_SYMBOL) Clause)*
  / Clause

Clause
  = (Term / Phrase) Field
  / Term / Phrase / Range

Field
  = (DotField / BracketField) (WhiteSpace / &")" )?

DotField
  = "." WordChar+ "."

BracketField
  = "[" WordChar+ "]"

Term
  = (Char+ (!Field* / (&"." / Char+)?)) (WhiteSpace / &")" / &"." / &"[")?

Phrase
  = ["'] [^'"]+ ["'] OptionalWhiteSpace

Range
  = "@" WordChar+ OptionalWhiteSpace RangeOp OptionalWhiteSpace ["]* Char+ ["]* (WhiteSpace / &"(" / &")" / &EOI)?

Char
  = WordChar / [/,*?$]

WordChar
  = [0-9a-zA-Z\-_]

RangeOp
  = [<>=]+

OptionalDigits
  = [0-9]*

WhiteSpace
  = [ \t\f]+

OptionalWhiteSpace
  = [ \t\f]*

OR
  = "OR"i CharAfterOp

OR_SYMBOL
  = "|" OptionalWhiteSpace

XOR
  = "XOR"i CharAfterOp

NOT_ADJ
  = "NOT"i OptionalWhiteSpace "ADJ"i OptionalDigits CharAfterOp

NOT_NEAR
  = "NOT"i OptionalWhiteSpace "NEAR"i OptionalDigits CharAfterOp

NOT_WITH
  = "NOT"i OptionalWhiteSpace "WITH"i OptionalDigits CharAfterOp

NOT_SAME
  = "NOT"i OptionalWhiteSpace "SAME"i OptionalDigits CharAfterOp

AND
  = "AND"i CharAfterOp

AND_SYMBOL
  = "&" OptionalWhiteSpace

SAME
  = "SAME"i OptionalDigits CharAfterOp

WITH
  = "WITH"i OptionalDigits CharAfterOp

NEAR
  = "NEAR"i OptionalDigits CharAfterOp

ADJ
  = "ADJ"i OptionalDigits CharAfterOp

NOT
  = "NOT"i WhiteSpace

CharAfterOp
  = WhiteSpace / &"(" / &EOI

DEFAULT_OPERATOR
  = !(OR / XOR / AND / NOT_ADJ / NOT_NEAR / NOT_WITH / NOT_SAME / SAME / WITH / NEAR / ADJ)

EOI
  = !.
