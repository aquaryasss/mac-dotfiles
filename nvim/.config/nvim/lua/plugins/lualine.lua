return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Function to retrieve the current username
    local function username()
      return os.getenv("USER") or "user"
    end

    -- Insert the username function into the lualine_x section
    table.insert(opts.sections.lualine_x, username)
  end,
}
