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
		PreProc = { fg = colors.rodbit_error, bg = "NONE" },
		Exception = { fg = colors.rodbit_error, bg = "NONE" },
		Error = { fg = colors.rodbit_error, bg = "NONE" },
		DiffDelete = { fg = colors.rodbit_error, bg = "NONE" },
		GitGutterDelete = { fg = colors.rodbit_error, bg = "NONE" },
		GitGutterChangeDelete = { fg = colors.rodbit_error, bg = "NONE" },
		cssIdentifier = { fg = colors.rodbit_error, bg = "NONE" },
		cssImportant = { fg = colors.rodbit_error, bg = "NONE" },
		Type = { fg = colors.rodbit_error, bg = "NONE" },
		Identifier = { fg = colors.rodbit_error, bg = "NONE" },
		PMenuSel = { fg = colors.rodbit_success, bg = "NONE" },
		Constant = { fg = colors.rodbit_success, bg = "NONE" },
		Repeat = { fg = colors.rodbit_success, bg = "NONE" },
		DiffAdd = { fg = colors.rodbit_success, bg = "NONE" },
		GitGutterAdd = { fg = colors.rodbit_success, bg = "NONE" },
		cssIncludeKeyword = { fg = colors.rodbit_success, bg = "NONE" },
		Keyword = { fg = colors.rodbit_success, bg = "NONE" },
		IncSearch = { fg = colors.rodbit_warning, bg = "NONE" },
		Title = { fg = colors.rodbit_warning, bg = "NONE" },
		PreCondit = { fg = colors.rodbit_warning, bg = "NONE" },
		Debug = { fg = colors.rodbit_warning, bg = "NONE" },
		SpecialChar = { fg = colors.rodbit_warning, bg = "NONE" },
		Conditional = { fg = colors.rodbit_warning, bg = "NONE" },
		Todo = { fg = colors.rodbit_warning, bg = "NONE" },
		Special = { fg = colors.rodbit_warning, bg = "NONE" },
		Label = { fg = colors.rodbit_warning, bg = "NONE" },
		Delimiter = { fg = colors.rodbit_warning, bg = "NONE" },
		Number = { fg = colors.rodbit_warning, bg = "NONE" },
		CursorLineNR = { fg = colors.rodbit_warning, bg = "NONE" },
		Define = { fg = colors.rodbit_warning, bg = "NONE" },
		MoreMsg = { fg = colors.rodbit_warning, bg = "NONE" },
		Tag = { fg = colors.rodbit_warning, bg = "NONE" },
		String = { fg = colors.rodbit_warning, bg = "NONE" },
		MatchParen = { fg = colors.rodbit_warning, bg = "NONE" },
		Macro = { fg = colors.rodbit_warning, bg = "NONE" },
		DiffChange = { fg = colors.rodbit_warning, bg = "NONE" },
		GitGutterChange = { fg = colors.rodbit_warning, bg = "NONE" },
		cssColor = { fg = colors.rodbit_warning, bg = "NONE" },
		Function = { fg = colors.rodbit_info, bg = "NONE" },
		Directory = { fg = colors.rodbit_purple, bg = "NONE" },
		markdownLinkText = { fg = colors.rodbit_purple, bg = "NONE" },
		javaScriptBoolean = { fg = colors.rodbit_purple, bg = "NONE" },
		Include = { fg = colors.rodbit_purple, bg = "NONE" },
		Storage = { fg = colors.rodbit_purple, bg = "NONE" },
		cssClassName = { fg = colors.rodbit_purple, bg = "NONE" },
		cssClassNameDot = { fg = colors.rodbit_purple, bg = "NONE" },
		Statement = { fg = colors.rodbit_light, bg = "NONE" },
		Operator = { fg = colors.rodbit_light, bg = "NONE" },
		cssAttr = { fg = colors.rodbit_light, bg = "NONE" },
		Pmenu = { fg = colors.rodbit_light, bg = "#454545" },
		SignColumn = { bg = colors.rodbit_dark },
		LineNr = { fg = "#949494", bg = colors.rodbit_dark },
		NonText = { fg = colors.rodbit_purple, bg = colors.rodbit_dark },
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

function M.load()
	M.setup()
end

return M
