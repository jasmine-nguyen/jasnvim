return {
	"echasnovski/mini.pairs",
	event = "VeryLazy",
	config = function()
		require("mini.pairs").setup({
			mappings = {
				["<"] = { action = "closeopen", pair = "<>", neigh_pattern = "[^\\].", register = { cr = false } },
			},
		})
	end,
}
