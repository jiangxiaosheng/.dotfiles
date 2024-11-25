return {
	"akinsho/toggleterm.nvim",
  enabled = true,
  cmd = "ToggleTerm",
	version = "*",
  keys = {
    { "<C-q>", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" }
  },
  opts = {
    size = 25,
    open_mapping = [[<C-q>]],
    start_in_insert = true,
    close_on_exit = true,
  }
}

