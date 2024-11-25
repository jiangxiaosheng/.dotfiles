return {
  "ray-x/lsp_signature.nvim",
  event = "InsertEnter",
  opts = {
    bind = true,
    handler_opts = {
      border = "rounded"
    }
  },
  config = function()
    require('lsp_signature').setup({
      close_timeout = 500,
      auto_close_after = 2,
    })
  end
}
