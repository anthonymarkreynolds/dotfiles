require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.norg.qol.toc"] = {},
		["core.norg.qol.todo_items"] = {},
		["core.norg.concealer"] = {},
		["core.norg.esupports.indent"] = {},
		["core.norg.esupports.metagen"] = {},
		["core.norg.news"] = {},
		["core.integrations.treesitter"] = {},
		["core.integrations.telescope"] = {},
		["core.neorgcmd"] = {},
		["core.keybinds"] = {
			config = {
				hook = function(keybinds)
					keybinds.map("norg", "n", "<leader>nmu", "core.norg.esupports.metagen.update_metadata")
					keybinds.map("norg", "n", "<leader>nmc", "core.norg.esupports.metagen.constuct_metadata")
					keybinds.map("norg", "n", "<leader>nmp", "core.norg.esupports.metagen.is_metadata_present")
					keybinds.map("norg", "n", "<leader>nmi", "core.norg.esupports.metagen.inject_metadata")
				end,
			},
		},
	},
})
