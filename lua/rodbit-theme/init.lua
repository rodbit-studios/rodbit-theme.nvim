local M = {}

function M.setup()
	local colors = {
		rodbit_dark = "#272935",
		rodbit_light = "#fafafa",
		rodbit_error = "#f87d88",
		rodbit_success = "#aef8b0",
		rodbit_warning = "#ffc857",
		rodbit_info = "#60d5f6",
		rodbit_purple = "#dd9ff8",
		rodbit_comment = "#c481ff",
	}

	local theme = {
		Normal = { fg = colors.rodbit_light, bg = colors.rodbit_dark },
		DiffText = { fg = colors.rodbit_error, bg = "NONE" },
		ErrorMsg = { fg = colors.rodbit_error, bg = "NONE" },
		WarningMsg = { fg = colors.rodbit_error, bg = "NONE" },
		-- (Rest of the highlight definitions)
		Comment = { fg = colors.rodbit_comment, gui = "italic" },
		SpecialComment = { fg = colors.rodbit_comment, gui = "italic", bg = "NONE" },
		CursorLine = { bg = "#454545" },
		TabLineFill = { gui = "NONE", bg = "#454545" },
		TabLine = { fg = "#949494", bg = "#454545", gui = "NONE" },
		StatusLine = { gui = "bold", bg = "#454545", fg = colors.rodbit_light },
		StatusLineNC = { gui = "NONE", bg = colors.rodbit_dark, fg = colors.rodbit_light },
		Search = { bg = colors.rodbit_purple, fg = colors.rodbit_light },
		VertSplit = { gui = "NONE", fg = "#454545", bg = "NONE" },
		Visual = { gui = "NONE", bg = "#454545" },
	}

	for group, colors in pairs(theme) do
		vim.api.nvim_set_hl(0, group, colors)
	end
end

return M
