return {
  "tamton-aquib/duck.nvim",
  config = function()
    vim.keymap.set("n", "<leader>Dh", function() require("duck").hatch() end, { desc = "Hatch Duck" })
    vim.keymap.set("n", "<leader>Dk", function() require("duck").cook() end, { desc = "Cook Duck" })
    vim.keymap.set("n", "<leader>Da", function() require("duck").cook_all() end, { desc = "Cook All Ducks" })
    vim.keymap.set("n", "<leader>D2", function()
      for _ = 1, 20 do
        require("duck").hatch()
      end
    end, { desc = "Hatch 20 ducks" })
    vim.keymap.set("n", "<leader>DH", function()
      for _ = 1, 100 do
        require("duck").hatch()
      end
    end, { desc = "Hatch 100 ducks" })
  end,
}
