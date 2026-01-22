return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- 1. Custom Theme Overrides
    -- Load the base catppuccin theme to modify it
    local custom_theme = require("lualine.themes.catppuccin")

    -- Normal mode: Catppuccin Pink with dark text for readability
    custom_theme.normal.a.bg = "#f5c2e7"
    custom_theme.normal.a.fg = "#1e1e2e"

    -- Insert mode: Catppuccin Mauve with dark text
    custom_theme.insert.a.bg = "#cba6f7"
    custom_theme.insert.a.fg = "#1e1e2e"

    -- Apply the customized theme to the lualine options
    opts.options.theme = custom_theme

    -- 2. Existing Username Functionality
    -- Function to retrieve the current username
    local function username()
      return os.getenv("USER") or "user"
    end

    -- Insert the username function into the lualine_x section
    table.insert(opts.sections.lualine_x, username)
  end,
}
