return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  config = function(_, opts)
    require("colorizer").setup(opts)
    require("colorizer").attach_to_buffer(0)
  end,
  opts = {
    filetypes = { "*" },
    user_default_options = {
      RGB = true,
      RRGGBB = true,
      names = true, -- IMPORTANT: This shows previews for "blue", "red", etc.
      RRGGBBAA = true,
      css = true, -- IMPORTANT: Recognizes CSS-style colors often used in configs
      tailwind = true, -- Can help with shorthand colors
      mode = "virtualtext",
      virtualtext = "■",
    },
  },
}
