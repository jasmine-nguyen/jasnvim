return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	version = "*",
	opts = {
		autochdir = true,
		size = 20,
		open_mapping = "<leader>tt",
		start_in_insert = true,
		insert_mappings = true, -- whether or not the open mapping applies in insert mode
		terminal_mappings = true,
		direction = "float",
		close_on_exit = true, -- close the terminal window when the process exits
		shell = nil, -- change the default shell
		float_opts = {
			border = "rounded",
			winblend = 0,
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
	},
	vim.keymap.set({ "t" }, "<esc>", "<cmd>close<CR>", { noremap = true, silent = true }),
}