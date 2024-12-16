local ls = require("luasnip") -- Import LuaSnip
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Helper function to get the current date and time
local function datetime()
  return os.date("%Y-%m-%d %H:%M:%S")
end

-- This is a boiler plate code for c++
ls.add_snippets("c", {
  s("cb", {
    t({ "/*", "Author : Mihir Raj Singh", "Title : " }),
    i(1),
    t({ "", "Date & Time : " }),
    f(datetime, {}),
    t({ "", "*/", "" }),
    t({ "#include <stdio.h>", "", "int main() {", "", "\t" }),
    i(2),
    t({ "", "" }),
    t({ "", "\treturn 0;", "}" }),
  }),
})
