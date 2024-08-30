lvim.builtin.which_key.mappings["t"] = {
  name = "Trouble",
  r = { "<cmd>Telescope lsp_references<cr>", "References" },
  f = { "<cmd>Telescope lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Telescope quickfix<cr>", "QuickFix" },
  l = { "<cmd>Telescope loclist<cr>", "LocationList" },
  w = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Diagnostics" },
}


lvim.keys.normal_mode["<C-S-Down>"] = ":m +1<CR>"
lvim.keys.normal_mode["<C-S-Up>"] = ":m -2<CR>"
