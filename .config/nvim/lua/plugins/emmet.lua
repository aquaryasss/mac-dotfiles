return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = {
            "html",
            "css",
            "javascriptreact",
            "typescriptreact",
            "vue",
            "svelte",
            "ejs",
          },
          init_options = {
            html = { options = { ["bem.enabled"] = true } },
          },
        },
      },
    },
  },
}
