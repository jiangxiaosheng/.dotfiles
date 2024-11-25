return {
	"pocco81/auto-save.nvim",
  enabled = true,
	config = function()
		require("auto-save").setup({
			enabled = true, -- Start auto-save when the plugin is loaded
			events = { "InsertLeave", "TextChanged" }, -- Trigger autosave on these events
			execution_message = {
				message = function()
					return ""
				end,
			}, -- Optional: disable save messages
			condition = function(buf)
				local fn = vim.fn
				local utils = require("auto-save.utils.data")

				if
					fn.getbufvar(buf, "&modifiable") == 1
					and utils.not_in(fn.getbufvar(buf, "&filetype"), {})
				then
					return true -- met condition(s), can save
				end
				return false -- can't save
			end,
			debounce_delay = 500,
		})
	end,
}
