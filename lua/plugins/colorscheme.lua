return {
	"catppuccin/nvim",
	config = function()
		require('catppuccin').setup({
			flavour = "macchiato",    -- или "mocha", "frappe", "latte"
			no_italic = true
		})
		vim.cmd("colorscheme catppuccin")
	end
}
