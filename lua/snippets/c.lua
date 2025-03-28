local ls = require("luasnip") -- Import LuaSnip
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Function to get current date and time
local function current_datetime()
  return os.date("%Y-%m-%d %H:%M:%S")
end

ls.add_snippets("c", {
  s("cb", {
    t({
      "/*",
      "Author : Mihir Raj Singh",
      "Title : ",
    }),
    i(1, "Title Here"),
    t({
      "",
      "Date & Time : ",
    }),
    f(current_datetime, {}),
    t({
      "",
      "*/",
      "",
      "#include <stdio.h>",
      "",
      "// Function definition and declaration starts",
      "",
      "// Function definition and declaration ends",
      "",
      "int main()",
      "{",
      "    ",
    }),
    i(2, "// Your code here"),
    t({
      "",
      "    return 0;",
      "}",
    }),
  }),
})
