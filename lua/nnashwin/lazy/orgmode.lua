return {
	"nvim-orgmode/orgmode",
	config = function()
		require("orgmode").setup({
			org_agenda_files = { "~/notes/my-orgs/**/*" },
			org_default_notes_file = "~/notes/org/refile.org",
		})
	end,
}
