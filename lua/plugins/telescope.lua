return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
		cmd = { "Telescope" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[s]earch [b]uffers" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[s]earch [h]elp" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[s]earch [k]eymaps" })
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[s]earch [f]iles" })
			vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[s]earch [s]elect Telescope" })
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[s]earch current [w]ord" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[s]earch by [g]rep" })
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[s]earch [d]iagnostics" })
			vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[s]earch [r]esume" })
			vim.keymap.set("n", "<leader>so", builtin.oldfiles, { desc = "[s]earch [o]ld files)" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
