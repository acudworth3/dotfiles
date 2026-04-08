-- TODO: replace with glimmer

return {
  "rachartier/tiny-glimmer.nvim",
  event = "VeryLazy",
  priority = 10, -- Low priority to catch other plugins' keybindings
  config = function()
    require("tiny-glimmer").setup {
      search = {
        enabled = false,
        default_animation = "pulse",
        next_mapping = "n", -- Key for next match
        prev_mapping = "N", -- Key for previous match
      },
    }
  end,
}
