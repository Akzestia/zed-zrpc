

[
    "scheme"
] @keyword

[
    "u32_id",
    "uname"
] @type


(number) @number


; source_file: ($) => repeat($._definition),

; _definition: ($) => choice($.scheme_definition),

; scheme_definition: ($) => seq("scheme", $.identifier, $.block),

; block: ($) => seq("{", repeat($._statement), "}"),

; _statement: ($) => seq($.identifier, $.scheme_type),

; keyword: ($) => choice("scheme"),

; scheme_type: ($) => choice("u32_id", "uname"),

; identifier: ($) => /[a-zA-Z_][a-zA-Z0-9_]*/,

; number: ($) => /\d+/,
