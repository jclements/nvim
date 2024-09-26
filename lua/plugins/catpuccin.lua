return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		term_colors = true,
		transparent_backgroud = true,
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme("catppuccin-macchiato")
		vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
		vim.api.nvim_set_hl(0, "NormalNC", {bg = "none"})
		vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
		vim.api.nvim_set_hl(0, "NeoTreeNormal", {bg = "none"})
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", {bg = "none"})
		vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", {bg = "none"})
	end,
}
