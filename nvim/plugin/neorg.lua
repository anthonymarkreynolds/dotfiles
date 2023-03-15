require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.syntax"] = {},
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					my_ws = "~/neorg",
					my_other_notes = "~/work/notes",
					book_study = "~/Documents/books/notes",
					research = "~/Documents/research",
				},
				index = "index.norg",
			},
		},
		["core.integrations.nvim-cmp"] = {},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp",
			},
		},
		["core.norg.qol.toc"] = {},
		["core.norg.qol.todo_items"] = {},
		["core.norg.concealer"] = {
			config = {
				folds = false,
				icon_preset = "basic",
			},
		},
		["core.norg.esupports.hop"] = {},
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
					keybinds.map_event("norg", "n", "<leader>gt", "core.norg.dirman.new.note")
					keybinds.map_event("norg", "n", "<leader>ntl", "core.integrations.telescope.find_linkable")
				end,
			},
		},
	},
})
