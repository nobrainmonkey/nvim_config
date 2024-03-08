--@type MappingsTable
local M = {}
M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- Split vertically
    ["<leader>sv"] = {
      function()
        vim.cmd("vsplit")
      end,
      "Split vertically",
    },

    -- Split horizontally
    ["<leader>sh"] = {
      function()
        vim.cmd("split")
      end,
      "Split horizontally",
    },

    -- Resize split panes
    ["<C-Up>"] = {
      function()
        vim.cmd("resize -2")
      end,
      "Resize split up",
    },
    ["<C-Down>"] = {
      function()
        vim.cmd("resize +2")
      end,
      "Resize split down",
    },
    ["<C-Left>"] = {
      function()
        vim.cmd("vertical resize -2")
      end,
      "Resize split left",
    },
    ["<C-Right>"] = {
      function()
        vim.cmd("vertical resize +2")
      end,
      "Resize split right",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}
return M

