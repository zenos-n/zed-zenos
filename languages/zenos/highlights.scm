(comment) @comment
(identifier) @variable
(attrpath (identifier) @property)
["if" "then" "else" "let" "in" "inherit" "rec" "with" "assert" "or" "_let" "_import" "import"] @keyword
(action_statement operator: _ @keyword)
[(string_expression) (indented_string_expression) (path_expression) (hpath_expression) (spath_expression) (uri_expression)] @string
[(integer_expression) (float_expression) (version_expression)] @number
(escape_sequence) @string.escape
(interpolation "${" @punctuation.special "}" @punctuation.special)
(function_expression universal: (identifier) @variable.parameter)
(formal name: (identifier) @variable.parameter)
(apply_expression function: (variable_expression (identifier) @function))
(let_statement name: (identifier) @variable type: (_) @type)
(import_statement name: (identifier) @variable)
((variable_expression (identifier) @constant) (#match? @constant "^(true|false|null)$"))
((identifier) @variable.special (#match? @variable.special "^\\$"))
["=" "++" "--" "!" "!!"] @operator
(binary_expression operator: _ @operator)
(unary_expression operator: _ @operator)
[";" "." "," ":"] @punctuation.delimiter
["(" ")" "[" "]" "{" "}"] @punctuation.bracket
