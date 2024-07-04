return
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      -- Use init for configuration, don't use the more common "config".
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_mapping_enabled = true
    end
}

