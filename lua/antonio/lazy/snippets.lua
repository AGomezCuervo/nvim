return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
  dependencies = { "rafamadriz/friendly-snippets" },
  config=function ()
   local ls = require("luasnip")
   local s = ls.snippet
   local t = ls.text_node
   local i = ls.insert_node

   ls.add_snippets("html", {
     s("!!", {
       t({'<!DOCTYPE html>'}),
       t({""}),
       t('<html lang="en">'),
       t({ "", "\t"}),
       t('<head>'),
       t({ "", "\t"}),
       t('  <meta charset="UTF-8">'),
       t({ "", "\t"}),
       t('  <meta name="viewport" content="width=device-width, initial-scale=1.0">'),
       t({ "", "\t"}),
       t('  <meta http-equiv="X-UA-Compatible" content="ie=edge">'),
       t({ "", "\t"}),
       t('  <title></title>'),
       t({ "", "\t"}),
       t('  <link rel="stylesheet" href="style.css">'),
       t({ "", "\t"}),
       t('</head>'),
       t({ "", "\t"}),
       t('  <body>'),
       t({ "", "\t"}), i(0),
       t({'','\t  </body>'}),
       t({ "", "\t"}),
       t('</html>'),
     })
   })
  end
}
