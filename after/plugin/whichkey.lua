local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

-- wk.register({
--   f = {
--     name = "file", -- optional group name
--     f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
--     r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
--     n = { "New File" }, -- just a label. don't create any mapping
--     e = "Edit File", -- same as above
--     ["1"] = "which_key_ignore",  -- special label to hide it in the popup
--     b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
--   },
-- }, { prefix = "<leader>" })
--
wk.register({
  f = {"<cmd>OmniSharpCodeFormat<cr>", "Code format"},
  f = {
    name = "Find",
    f = { "<cmd>Files<cr>", "Find files" }, 
    g = { "<cmd>GFiles<cr>", "Git files"},
    u = {"<cmd>OmniSharpFindUsages", "Find usages"},
    i = {"<cmd>OmniSharpFindImplementations", "Find implementations"},
    s = {"<cmd>OmniSharpFindSymbol", "Find symbol"},
    x = {"<cmd>OmniSharpFixUsings", "Fix usings"},
  },
  g = {
      name = "Go to",
      d = {"<cmd>OmniSharpGoToDefinition<cr>", "Go to definition"},
  },
  p ={
      name = "Preview",
      d = {"<cmd>OmniSharpPreviewDefinition<cr>", "Preview Definition"},
      i = {"<cmd>OmniSharpPreviewImplementations<cr>", "Preview implementations"},
  },

  t = {"<cmd>OmniSharpTypeLookup<cr>", "Type lookup"},
  d = {"<cmd>OmniSharpDocumentation<cr>", "C# documentation"},
  h = {"<cmd>OmniSharpSignatureHelp<cr>", "Signature help"},

  c ={
      name = "Code actions",
      a = {"<cmd>OmniSharpCodeActions<cr>", "Code actions"},
      ["."] = {"<cmd>OmniSharpCodeActionRepeat<cr>", "Repeat code action"},
      c = {"<cmd>OmniSharpGlobalCodeCheck<cr>", "Global code check"},
  },

  o ={
      name = "Omnisharp",
      r = {"<cmd>OmniSharpRestartServer<cr>", "Restart Omnisharp server"},
      s = {
          s = {"<cmd>OmniSharpStartServer<cr>", "Start Omnisharp server"},
          p = {"<cmd>OmniSharpStopServer<cr>", "Stop Omnisharp server"},
      }
  },
}, { prefix = "<leader>" })
