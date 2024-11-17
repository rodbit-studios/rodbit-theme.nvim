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
		rodbit_comment = "#949494",
	}

	local theme = {
		Normal = { fg = colors.rodbit_light, bg = colors.rodbit_dark },
		DiffText = { fg = colors.rodbit_error },
		ErrorMsg = { fg = colors.rodbit_error },
		WarningMsg = { fg = colors.rodbit_error },
		PreProc = { fg = colors.rodbit_error },
		Exception = { fg = colors.rodbit_error },
		Error = { fg = colors.rodbit_error },
		DiffDelete = { fg = colors.rodbit_error },
		GitGutterDelete = { fg = colors.rodbit_error },
		GitGutterChangeDelete = { fg = colors.rodbit_error },
		cssIdentifier = { fg = colors.rodbit_error },
		cssImportant = { fg = colors.rodbit_error },
		Type = { fg = colors.rodbit_error },
		Identifier = { fg = colors.rodbit_error },
		PMenuSel = { fg = colors.rodbit_success },
		Constant = { fg = colors.rodbit_success },
		Repeat = { fg = colors.rodbit_success },
		DiffAdd = { fg = colors.rodbit_success },
		GitGutterAdd = { fg = colors.rodbit_success },
		cssIncludeKeyword = { fg = colors.rodbit_success },
		Keyword = { fg = colors.rodbit_success },
		IncSearch = { fg = colors.rodbit_warning },
		Title = { fg = colors.rodbit_warning },
		PreCondit = { fg = colors.rodbit_warning },
		Debug = { fg = colors.rodbit_warning },
		SpecialChar = { fg = colors.rodbit_warning },
		Conditional = { fg = colors.rodbit_warning },
		Todo = { fg = colors.rodbit_warning },
		Special = { fg = colors.rodbit_warning },
		Label = { fg = colors.rodbit_warning },
		Delimiter = { fg = colors.rodbit_warning },
		Number = { fg = colors.rodbit_warning },
		CursorLineNr = { fg = colors.rodbit_warning },
		Define = { fg = colors.rodbit_warning },
		MoreMsg = { fg = colors.rodbit_warning },
		Tag = { fg = colors.rodbit_warning },
		String = { fg = colors.rodbit_warning },
		MatchParen = { fg = colors.rodbit_warning },
		Macro = { fg = colors.rodbit_warning },
		DiffChange = { fg = colors.rodbit_warning },
		GitGutterChange = { fg = colors.rodbit_warning },
		cssColor = { fg = colors.rodbit_warning },
		Function = { fg = colors.rodbit_info },
		Directory = { fg = colors.rodbit_success },
		markdownLinkText = { fg = colors.rodbit_purple },
		javaScriptBoolean = { fg = colors.rodbit_purple },
		Include = { fg = colors.rodbit_purple },
		Storage = { fg = colors.rodbit_purple },
		cssClassName = { fg = colors.rodbit_purple },
		cssClassNameDot = { fg = colors.rodbit_purple },
		Statement = { fg = colors.rodbit_light },
		Operator = { fg = colors.rodbit_light },
		cssAttr = { fg = colors.rodbit_light },
		Pmenu = { fg = colors.rodbit_light, bg = "#454545" },
		SignColumn = { bg = colors.rodbit_dark },
		LineNr = { fg = "#949494", bg = colors.rodbit_dark },
		NonText = { fg = colors.rodbit_comment, bg = colors.rodbit_dark },
		Comment = { fg = colors.rodbit_comment },
		SpecialComment = { fg = colors.rodbit_comment, bg = "NONE" },
		CursorLine = { bg = "#454545" },
		TabLineFill = { bg = "#454545" },
		TabLine = { fg = "#949494", bg = "#454545" },
		StatusLine = { bg = "#454545", fg = colors.rodbit_light },
		StatusLineNC = { bg = colors.rodbit_dark, fg = colors.rodbit_light },
		Search = { bg = colors.rodbit_purple, fg = colors.rodbit_light },
		VertSplit = { fg = "#454545", bg = "NONE" },
		Visual = { bg = "#454545" },
	}

	for group, colors in pairs(theme) do
		vim.api.nvim_set_hl(0, group, colors)
	end
end

function M.load()
	M.setup()
end

return M
