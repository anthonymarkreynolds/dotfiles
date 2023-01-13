require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.norg.qol.toc"] = {},
		["core.norg.qol.todo_items"] = {},
		["core.norg.concealer"] = {},
		["core.norg.esupports.indent"] = {},
		["core.norg.esupports.metagen"] = {
			config = {
				type = "auto",
			},
		},
		["core.norg.news"] = {},
		["core.integrations.treesitter"] = {},
		["core.integrations.telescope"] = {},
		["core.neorgcmd"] = {},
		["core.keybinds"] = {
			config = {
				hook = function(keybinds)
					keybinds.map("norg", "n", "<leader>tt", "<cmd>echo 'test'<CR>")
					keybinds.map_event("norg", "n", "<leader>tr", "core.norg.qol.todo_items.todo.task_done")
					keybinds.map_event("norg", "n", "<leader>nmu", "core.norg.esupports.metagen.update_metadata")
					keybinds.map_event("norg", "n", "<leader>nmc", "core.norg.esupports.metagen.constuct_metadata")
					keybinds.map_event("norg", "n", "<leader>nmp", "core.norg.esupports.metagen.is_metadata_present")
					keybinds.map_event("norg", "n", "<leader>nmi", "core.norg.esupports.metagen.inject_metadata")
				end,
			},
		},
	},
})
