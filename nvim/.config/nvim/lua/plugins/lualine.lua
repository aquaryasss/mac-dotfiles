return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- 1. Custom Theme Overrides
    local custom_theme = require("lualine.themes.catppuccin")

    -- Normal mode: Catppuccin Pink
    custom_theme.normal.a.bg = "#f5c2e7"
    custom_theme.normal.a.fg = "#1e1e2e"

    -- Insert mode: Catppuccin Mauve
    custom_theme.insert.a.bg = "#cba6f7"
    custom_theme.insert.a.fg = "#1e1e2e"

    -- Command mode: Catppuccin Rosewater (The "Pink" Command Bar)
    custom_theme.command.a.bg = "#f5e0dc"
    custom_theme.command.a.fg = "#1e1e2e"

    -- Visual mode: Catppuccin Flamingo (Optional, for a different pink tone)
    custom_theme.visual.a.bg = "#f2cdcd"
    custom_theme.visual.a.fg = "#1e1e2e"

    -- Apply the customized theme
    opts.options.theme = custom_theme

    -- 2. Existing Username Functionality
    local function username()
      return os.getenv("USER") or "user"
    end

    table.insert(opts.sections.lualine_x, username)
  end,
}
