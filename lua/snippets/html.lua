local ls = require("luasnip") -- Import LuaSnip
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("html", {
  s("htmlboiler", {
    t({
      "<!DOCTYPE html>",
      '<html lang="en">',
      "    <head>",
      "        <!-- Meta Information -->",
      '        <meta charset="UTF-8" />',
      '        <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
      '        <meta name="author" content="',
    }),
    i(1, "Author Name"),
    t({
      '" />',
      '        <meta name="description" content="',
    }),
    i(2, "Description of the webpage"),
    t({
      '" />',
      "",
      "        <!-- Favicon -->",
      '        <link rel="icon" href="',
    }),
    i(3, "favicon.ico"),
    t({
      '" type="image/x-icon" />',
      '        <link rel="shortcut icon" href="',
    }),
    i(3),
    t({
      '" type="image/x-icon" />',
      '        <link rel="apple-touch-icon" sizes="180x180" href="',
    }),
    i(4, "apple-touch-icon.png"),
    t({
      '" />',
      '        <link rel="icon" type="image/png" sizes="32x32" href="',
    }),
    i(5, "favicon-32x32.png"),
    t({
      '" />',
      '        <link rel="icon" type="image/png" sizes="16x16" href="',
    }),
    i(6, "favicon-16x16.png"),
    t({
      '" />',
      "",
      "        <!-- Open Graph Metadata (for social sharing) -->",
      '        <meta property="og:title" content="',
    }),
    i(7, "Your Website Title"),
    t({
      '" />',
      '        <meta property="og:description" content="',
    }),
    i(8, "Brief description of the content"),
    t({
      '" />',
      '        <meta property="og:type" content="website" />',
      '        <meta property="og:url" content="',
    }),
    i(9, "https://www.yourwebsite.com"),
    t({
      '" />',
      '        <meta property="og:image" content="',
    }),
    i(10, "https://www.yourwebsite.com/image.jpg"),
    t({
      '" />',
      "",
      "        <!-- Title & File Links -->",
      "        <title>",
    }),
    i(11, "Document"),
    t({
      "</title>",
      "    </head>",
      "    <body>",
      "",
      "        <!-- Header Section -->",
      "        <header>",
      "            <h1>",
    }),
    i(12, "Welcome to My Website"),
    t({
      "</h1>",
      "            <!-- Add navigation or branding elements here -->",
      "        </header>",
      "",
      "        <!-- Main Content Section -->",
      "        <main>",
      "            <section>",
      "                <h2>",
    }),
    i(13, "Main Section Title"),
    t({
      "</h2>",
      "                <p>",
    }),
    i(14, "This is where your main content goes."),
    t({
      "</p>",
      "            </section>",
      "        </main>",
      "",
      "        <!-- Footer Section -->",
      "        <footer>",
      "            <p>&copy; ",
    }),
    i(15, "2024"),
    t(" "),
    i(16, "Your Website Name"),
    t({
      ". All rights reserved.</p>",
      "            <!-- Add footer links or copyright information here -->",
      "        </footer>",
      "    </body>",
      "</html>",
    }),
  }),
})
